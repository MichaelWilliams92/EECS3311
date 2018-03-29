note
	description: "[
		(1) A Bank consists of many customers.
		There are `count' customers.
		(2) New customers can be added to the bank by name.
		    We never delete a customer record, 
		    even after they leave the bank.
		(3) Each customer shall have a single account at the bank.
		    Initially the balance in the account is zero.
		(4) Money can be deposited to and withdrawn from customer accounts.
		    Money is deposited as a dollar amount, 
		    perhaps with more than two decimal places.
		(5) Money calculations shall be precise 
		  (e.g. adding, subtracting and multiplying 
		  money amounts must be without losing pennies or parts of pennies).
		(6) Money can also be transferred between two customer accounts.
		(7) Balances in accounts shall never be negative.
		(8) Customers are identified by name, 
		    so there cannot be two customers having the same name.	  
		(9) Customers are stored in a list sorted alpahabetically by name.
		(11) The bank has an attribute `total' that stores the total
			of all the balances in the various customer accounts.
			This can be used to check for fraud.
			
			-----------------------------------------
			You will see '--Todo' whereyou must revise
			-----------------------------------------

		]"
	author: "JSO"
	date: "$Date$"
	revision: "$Revision$"

class
	BANK
inherit
	ANY
		redefine out end

create
	make

feature {NONE} -- Initialization
	make
			-- Create a bank
		do
			total := "0"
			zero := "0"
			one := "1"
	--		create {ARRAYED_LIST[CUSTOMER]} customers.make (10)
			create {SORTED_TWO_WAY_LIST[CUSTOMER]} customers.make
		customers.compare_objects
		end

feature -- bank attributes

	-- don't change the bank attributes

	zero, one: VALUE

	count : INTEGER
		-- total number of bank customers

	total: VALUE
		-- total of all the balances in the customers accounts

	customers : LIST[CUSTOMER]
		-- list of all bank customers


feature -- Commands using a single account

	-- do not change the precondition and postcondition tags
	-- you may change the part of the contract that comes after the tag
	-- you ma change the routine implemementations

	new (name1: STRING)
			-- Add a new customer named 'name1'
			-- to the end of list `customers'
		require
			customer_not_already_present: --use the customer_exists method to check for this
			not customer_exists(name1)

		local
		c: CUSTOMER

		do

		create c.make (name1)
		count := count + 1
		customers.extend(c)

		ensure
			total_balance_unchanged:
				sum_of_all_balances = old sum_of_all_balances
			num_customers_increased:
				count = old count + 1
			total_unchanged:
				total = old total
			customer_added_to_list:
				customer_exists (name1)
				and then customers[customer_id (name1)].name ~ name1
				and then customers[customer_id (name1)].balance ~ zero
			other_customers_unchanged: true
				customers_unchanged_other_than(name1, old customers.deep_twin)
		end


	deposit(a_name:STRING; a_value: VALUE)
			-- Deposit an amount of 'a_value' into account owned by 'a_name'.

		require
			customer_exists:
				customer_exists(a_name)
			positive_amount:
			a_value > zero

		local
			i :INTEGER
			j: BOOLEAN

		do

		customers[customer_id(a_name)].account.deposit (a_value)
		total := total + a_value

		ensure
			deposit_num_customers_unchanged:
				count = old count
			total_increased:
				total > old total
			deposit_customer_balance_increased:
				customers[customer_id(a_name)].balance > old customers[customer_id(a_name)].balance
			deposit_other_customers_unchanged:
				customers_unchanged_other_than(a_name, old customers.deep_twin)
			total_balance_increased:
				sum_of_all_balances > old sum_of_all_balances
		end

	withdraw (a_name:STRING; a_value: VALUE)
			-- Withdraw an amount of 'a_value' from account owned by 'a_name'.

		require
			customer_exists:
				customer_exists (a_name)
			positive_amount:
				a_value > zero
			sufficient_balance:
				customers[customer_id(a_name)].balance - a_value >= zero
		do
			from
				customers.start
			until
				customers.after
			loop
				if customers.item.name ~ a_name then
					customers.item.account.withdraw (a_value)
					total := total - a_value
				end
				customers.forth
			end

		ensure
			withdraw_num_customers_unchanged:
				customers.count = old customers.count
			total_decreased:
				total < old total
			withdraw_customer_balance_decreased:
				customers[customer_id(a_name)].balance < old customers[customer_id(a_name)].balance
			withdraw_other_customers_unchanged:
				customers_unchanged_other_than(a_name, old customers.deep_twin)
			total_balance_decreased:
				sum_of_all_balances < old sum_of_all_balances
		end

feature -- Command using multiple accounts

	transfer (name1: STRING; name2: STRING; a_value: VALUE)
			-- Transfer an amount of 'a_value' from
			-- account `name1' to account `name2'

		require
			distinct_accounts:
				name1 /~ name2
			customer1_exists:
				customer_exists (name1)
			customer2_exists:
				customer_exists (name2)
			sufficient_balance:
				customers[customer_id(name1)].balance >= a_value
		do
			customers[customer_id(name1)].account.withdraw(a_value)
			customers[customer_id(name2)].account.deposit(a_value)

		ensure
			same_total:
				total = old total
			same_count:
				count = old count
			total_balance_unchanged:
				sum_of_all_balances = old sum_of_all_balances
			customer1_balance_decreased:
				customers[customer_id(name1)].balance < old customers[customer_id(name1)].balance
			customer2_balance_increased:
				customers[customer_id(name2)].balance > old customers[customer_id(name2)].balance
			other_customers_unchanged:
				customers_unchanged_other_than_both(name1, name2, old customers.deep_twin)

		end

feature -- queries for contracts

	-- You may find the following queries helpful.
	-- Change them as necessary, or add your own
	-- if you add your own, contract them, and test them

	sum_of_all_balances: VALUE
			-- Summation of the balances in all customer accounts
		do
			from
				Result := Result.zero
				customers.start
			until
				customers.after
			loop
				Result := Result + customers.item.balance
				customers.forth
			end
		ensure
			comment("Result = (SUM i : 1..count: customers[i].balance)")
		end

	customer_exists(a_name: STRING): BOOLEAN
			-- Is customer `a_name' in the list?
		do
			from
				customers.start
			until
				customers.after or Result
			loop
				if customers.item.name ~ a_name then
					Result := true
				end
				customers.forth
			end
		ensure
			comment("EXISTS c in customers: c.name = a_name")
		end

	customer_id(a_name:STRING):INTEGER
			-- return index of `a_name' into customers
		local
			i: INTEGER
		do
			from
				i := 1
			until
				i > customers.count or Result /= 0
			loop
				if customers[i].name ~ a_name then
					Result := i
				end
				i := i + 1
			end

		end

	customer_with_name (a_name: STRING): CUSTOMER
			-- return customer with name `a_name'
		require
			customer_exists (a_name)
		do
		Result := customers[customer_id(a_name)]
			-- The above is needed to remove the VEVI compile error
			-- of void safety
			--make sure it works, maybe use as a testcase

		ensure
			correct_Result: Result.name ~ a_name
		end

	customers_unchanged_other_than (a_name: STRING; old_customers: like customers): BOOLEAN
			-- Are customers other than `a_name' unchanged?
		local
			c_name: STRING
		do
			from
				Result := true
				customers.start

			until
				customers.after or not Result
			loop
				c_name := customers.item.name
				if c_name /~ a_name then
					Result := Result and then
						old_customers.has (customers.item)
				end
				customers.forth
			end

		ensure
			Result =
				across
					customers as c
				all
					c.item.name /~ a_name IMPLIES
						old_customers.has (c.item)
				end
		end

	customers_unchanged_other_than_both (a_name1: STRING; a_name2: STRING; old_customers: like customers): BOOLEAN
				-- Are customers other than `a_name' and a_name2 unchanged?
			local
				c_name: STRING
			do
				from
					Result := true
					customers.start

				until
					customers.after or not Result
				loop
					c_name := customers.item.name
					if c_name /~ a_name1 and c_name /~ a_name2 then
						Result := Result and then
							old_customers.has (customers.item) --bs
					end
					customers.forth
				end

			ensure
				Result =
							across
								customers as c
							all
								c.item.name /~ a_name1 and c.item.name /~ a_name2 IMPLIES
									old_customers.has (c.item)
							end

			end


feature -- invariant queries
	unique_customers: BOOLEAN

	local
		k:INTEGER
		n:INTEGER

		do
		result := true

	from
		k := 1
		until
			k > customers.count
		loop
			from
				n := k + 1
			until
				n > customers.count
			loop
				if customers[k].name.is_equal (customers[n].name) then result := false end
				n := n + 1
			end
				k := k + 1
		end

		ensure
			Result = across
				1 |..| count as i
			all
				across 1 |..| count as j
				all
					customers[i.item] ~ customers[j.item]
					implies i.item = j.item
				end
			end
		end
feature -- Queries on string representation.

	customers_string: STRING
			-- Return printable state of `customers'.
		local
			sorted_customers: TWO_WAY_LIST[CUSTOMER]
		do
			create sorted_customers.make
			across
				customers as c
			loop
				sorted_customers.extend (c.item)
			end

			create Result.make_empty
			across
				sorted_customers as c
			loop
				Result := Result + c.item.out + "%N"
			end
		end


	out : STRING
		--prints out string representation of each customer's information

		local
			i :STRING

		do
			create Result.make_empty

			from
				customers.start
			until
				customers.after
			loop
			    Result := Result + "name: " + customers.item.name.out + ", balance: " + customers.item.balance.out + "%N"
				customers.forth
			end

		end

	comment(s:STRING): BOOLEAN
		do
			Result := true
		end

invariant
	value_constraints:
		zero = zero.zero and one = one.one
	consistent_count:
		count = customers.count
	consistent_total:
		total = sum_of_all_balances

	customer_names_unique:
		unique_customers
		comment("Need some invariant here")
		-- cannot have duplicate names in `customers'

	customers_are_sorted:
			across
				1 |..| (count - 1) as i
			all
				customers[i.item].name.is_less (customers[(i.item) + 1].name)
			end

		comment("Need some invariant here")
		-- customers must be in sorted order
end
