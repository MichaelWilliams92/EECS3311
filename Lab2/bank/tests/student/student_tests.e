note
	description: "Studenst write their tessts here"
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	STUDENT_TESTS

inherit
	ES_TEST

create
	make

feature {NONE} -- Initialization

	make
			-- Initialization for `Current'.
		do
			add_boolean_case (agent t1)
			add_boolean_case (agent t2)
			add_boolean_case (agent t3)
			add_boolean_case (agent t4)
			add_boolean_case (agent t5)
		end

feature -- tests

	t1_string: STRING = "[
name: AAAAA, balance: 0.00
name: Amanda, balance: 0.00
name: Bill, balance: 0.00
name: Charles, balance: 0.00
name: Charlie, balance: 0.00
name: Dick, balance: 0.00
name: Michael, balance: 0.00
name: Nick, balance: 0.00
name: William, balance: 0.00

						]"
	t1: BOOLEAN

	local
			b: BANK

		do
			create b.make
			comment ("t1: running tests primarily for the 'new' feature")
			sub_comment ("all names should add properly to the list in alphabetical order, and all balance should meet requirements")

			b.new ("Bill")
			b.new ("Charlie")
			b.new ("Charles")
			b.new ("Michael")
			b.new ("Amanda")
			b.new ("Dick")
			b.new ("Nick")
			b.new ("AAAAA")
			b.new ("William")
			
			sub_comment(b.out.count.out + " chars, actual: <br>" + b.out)
			sub_comment(t1_string.count.out + " chars, expected: <br>" + t1_string)

			Result := t1_string ~ b.out
		end

	t2_string: STRING = "[
name: Amanda, balance: 29.09
name: Bill, balance: 0.00
name: Bruce, balance: 15.03
name: Charlie, balance: 123.45

						]"
	t2: BOOLEAN

	local
			b: BANK

		do
			create b.make
			comment ("t2: running tests primarily for the 'deposit' feature")
			sub_comment ("amounts should be properly added to their respective accounts and total amounts should appropriately increase ")

			b.new ("Bill")
			b.new ("Charlie")
			b.new ("Amanda")
			b.new ("Bruce")

			b.deposit ("Charlie", "123.45")
			b.deposit ("Bruce", "0.03")
			b.deposit ("Amanda", "29.09")
			b.deposit ("Bruce", "15")

			sub_comment(b.out.count.out + " chars, actual: <br>" + b.out)
			sub_comment(t2_string.count.out + " chars, expected: <br>" + t2_string)

			Result := t2_string ~ b.out
		end

t3_string: STRING = "[
name: Amanda, balance: 19.52
name: Bill, balance: 0.00
name: Bruce, balance: 8.98
name: Charlie, balance: 0.00

						]"
	t3: BOOLEAN

	local
			b: BANK

		do
			create b.make
			comment ("t3: running tests primarily for the 'withdraw' feature")
			sub_comment ("amounts should be properly added and removed to and from their respective accounts and total amounts should appropriately increase ")

			b.new ("Bill")
			b.new ("Charlie")
			b.new ("Amanda")
			b.new ("Bruce")

			b.deposit ("Charlie", "123.45")
			b.deposit ("Bruce", "0.03")
			b.deposit ("Amanda", "29.09")
			b.deposit ("Bruce", "15")

			b.withdraw ("Charlie", "123.45")
			b.withdraw ("Bruce", "0.05")
			b.withdraw ("Amanda", "9.57")
			b.withdraw ("Bruce", "6.00")

			sub_comment(b.out.count.out + " chars, actual: <br>" + b.out)
			sub_comment(t3_string.count.out + " chars, expected: <br>" + t3_string)

			Result := t3_string ~ b.out
		end

t4_string: STRING = "[
name: Amanda, balance: 26.42
name: Bill, balance: 93.55
name: Bruce, balance: 0.00
name: Charlie, balance: 31.98

						]"
	t4: BOOLEAN

	local
			b: BANK

		do
			create b.make
			comment ("t4: running tests primarily for the 'transfer' feature")
			sub_comment ("amounts should be properly transferred to and from their respective accounts and total amounts should appropriately increase ")

			b.new ("Bill")
			b.new ("Charlie")
			b.new ("Amanda")
			b.new ("Bruce")

			b.deposit ("Charlie", "123.45")
			b.deposit ("Bruce", "0.03")
			b.deposit ("Amanda", "29.09")
			b.deposit ("Bruce", "15")

			b.withdraw ("Bruce", "0.05")
			b.withdraw ("Amanda", "9.57")
			b.withdraw ("Bruce", "6.00")

			b.transfer ("Charlie", "Bill", "100.45")
			b.transfer ("Amanda", "Bill", "0.09")
			b.transfer ("Bill", "Amanda", "6.99")
			b.transfer ("Bruce", "Charlie", "8.98")

			sub_comment(b.out.count.out + " chars, actual: <br>" + b.out)
			sub_comment(t4_string.count.out + " chars, expected: <br>" + t4_string)

			Result := t4_string ~ b.out
		end

t5_string: STRING = "[
name: Amanda, balance: 26.42
name: Bill, balance: 93.55
name: Bruce, balance: 0.00
name: Charlie, balance: 31.98

						]"
	t5: BOOLEAN

	local
			b: BANK

		do
			create b.make
			comment ("t5: running tests primarily for all features, while making sure that total and count values change accordingly ")

			b.new ("Bill")
			b.new ("Charlie")
			b.new ("Amanda")
			b.new ("Bruce")

			b.deposit ("Charlie", "123.45")
			b.deposit ("Bruce", "0.03")
			b.deposit ("Amanda", "29.09")
			b.deposit ("Bruce", "15")

			b.withdraw ("Bruce", "0.05")
			b.withdraw ("Amanda", "9.57")
			b.withdraw ("Bruce", "6.00")

			b.transfer ("Charlie", "Bill", "100.45")
			b.transfer ("Amanda", "Bill", "0.09")
			b.transfer ("Bill", "Amanda", "6.99")
			b.transfer ("Bruce", "Charlie", "8.98")

			sub_comment(b.out.count.out + " chars, actual: <br>" + b.out)
			sub_comment(t5_string.count.out + " chars, expected: <br>" + t5_string)

			Result := t5_string ~ b.out and b.total ~ "151.95" and b.count = 4
		end

end
