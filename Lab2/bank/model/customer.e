note
	description: "A customer has a name and an account with a balance"
	author: ""
	date: "$Date$"
	revision: "$Revision$"

 class
	CUSTOMER
	inherit
	COMPARABLE  --MAY NEED TO be changed to comparable when sortng in alphabetical order
		redefine is_equal, is_less end

create
	make


feature{NONE} -- Creation

	make(a_name:STRING)
			-- Create a customer with an `account'
		local
			l_account: ACCOUNT
			l_name: IMMUTABLE_STRING_8
		do
			l_name := a_name
			name := l_name
			name := a_name
			create l_account.make_with_name (a_name)
			account := l_account
		ensure
			correct_name: name ~ a_name
			correct_balance: balance = balance.zero
		end

feature -- queries

	name: IMMUTABLE_STRING_8

	balance: VALUE
		do
			Result := account.balance
		end

	account: ACCOUNT

		is_equal (other: like Current): BOOLEAN
			-- Is `other' value equal to current
		do
			Result := name ~ other.name and balance = other.balance  --try to understand why we need to compare balance AND name instead of just name
		ensure then
			Result = (name ~ other.name and balance = other.balance)
		end

is_less alias "<" (other: like Current): BOOLEAN
			-- Is current object less than `other'?
		do
			if  name < other.name then
				Result := true
			elseif name ~ other.name and balance < other.balance then
				Result := true
			else
				Result := false
			end
		ensure then
			Result =  (name < other.name)
				or else (name ~ other.name and balance < other.balance )
		end



invariant
	name_consistency: name ~ account.name
	balance_consistency: balance = account.balance
end
