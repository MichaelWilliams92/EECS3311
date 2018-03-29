note
	description: "Summary description for {RESIDENT}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	RESIDENT

inherit

	COMPARABLE
		redefine
			is_less,
			is_equal
		end

create
	make_cit, make_alien

feature {NONE} -- Creation

	make_cit (id: INTEGER_64; name: STRING; dob: TUPLE [d: INTEGER_64; m: INTEGER_64; y: INTEGER_64])
			-- Create a citizen
		local

			--	l_name: STRING
			--	l_id: INTEGER_64
			--	l_dob: TUPLE[d: INTEGER_64; m: INTEGER_64; y: INTEGER_64]

		do
			create today.make_now
			l_name := name
			l_id := id
			l_dob := dob
			l_country := "Canada"
			marriage_date := [g, g, g] --set to this by default, SEE HOW to properly cast Integer_64
			alive := TRUE
			spouse_name := ""
				--	g := 0

		end

feature {NONE} -- Creation

	make_alien (id: INTEGER_64; name: STRING; dob: TUPLE [d: INTEGER_64; m: INTEGER_64; y: INTEGER_64]; country: STRING)
			-- Create an alien
		local

			--	l_name: STRING
			--	l_id: INTEGER_64
			--	l_dob: TUPLE[d: INTEGER_64; m: INTEGER_64; y: INTEGER_64]
			--	l_country: STRING

		do
			create today.make_now
			l_name := name
			l_id := id
			l_dob := dob
			l_country := country
			marriage_date := [g, g, g] --set to this by default, SEE HOW to properly cast Integer_64
			alive := TRUE
			spouse_name := ""
				--	g := 0

		end

feature --add attributes

		--TYPE DAY = 1..31
		--TYPE MONTH := 1..12
		--TYPE YEAR := 1900..3000
		--TYPE DATE := TUPLE[d:DAY;m:MONTH;y:YEAR]

		--TYPE ID := INTEGER
		--TYPE NAME := STRING
		--TYPE COUNTRY := STRING

	today: DATE

	l_name: STRING

	l_id: INTEGER_64

	l_dob: TUPLE [d: INTEGER_64; m: INTEGER_64; y: INTEGER_64]

	l_country: STRING

	married: BOOLEAN

	spouse_id: INTEGER_64 --zero as a default if not married

	marriage_date: TUPLE [d: INTEGER_64; m: INTEGER_64; y: INTEGER_64] --all zeroes as a default if not married

	g: INTEGER_64 --default value for tuples

	alive: BOOLEAN

	spouse_name: STRING

feature --queries

	is_equal (other: like Current): BOOLEAN
			-- Is `other' value equal to current?   maybe consider strengthening later
		do
			Result := l_name ~ other.l_name and l_id ~ other.l_id and l_dob ~ other.l_dob --try to understand why we need to compare balance AND name instead of just name
		ensure then
			Result = l_name ~ other.l_name and l_id ~ other.l_id and l_dob ~ other.l_dob
		end

	is_less alias "<" (other: like Current): BOOLEAN
			-- Is current object less than `other'?   again consider strengthening later
		do
			if l_name < other.l_name then
				Result := true
			elseif l_name ~ other.l_name and l_id < other.l_id then
				Result := true
			else
				Result := false
			end
		ensure then
			Result = (l_name < other.l_name) or else (l_name ~ other.l_name and l_id < other.l_id)
		end

	change_spouse (s: INTEGER_64; y: STRING)
			--changes spouse ID
		require
			--postive: s > 0

		do
			spouse_id := s
			spouse_name := y
		ensure
			spouse_id ~ s
		end

	marry (p: TUPLE [d: INTEGER_64; m: INTEGER_64; y: INTEGER_64])
			--changes married boolean

		require
			valid_tuple: tuple_valid (p)
			not_married_yet: married = false --married currently = false
			no_marriage_date: marriage_date ~ [g, g, g] --marriage date is at default

		do
			married := TRUE
				--	marriage_date := p
			marriage_date.y := p.y
			marriage_date.m := p.m
			marriage_date.d := p.d
		ensure
			are_married: married = TRUE
			marriage_date: marriage_date ~ p
		end

	seperate
			--breaks the happy couple apart
		require
			married: married = true
			marriage_date: true
			marriage_date.d /~ g and marriage_date.m /~ g and marriage_date.y /~ g
		do
			married := FALSE
			marriage_date := [g, g, g]
		ensure
			not_married: married = FALSE
			no_marriage_date: marriage_date ~ [g, g, g]
				--any way to violate this condition in the tester?

		end

	die
			--ends someone's kufe
		require
			alive: alive = true
		do
			alive := FALSE
		ensure
			alive = FALSE
		end

	tuple_valid (p: TUPLE [d: INTEGER_64; m: INTEGER_64; y: INTEGER_64]): BOOLEAN
			--ensures tuple contains valid values
			--what is the valid range of years?? 1900-3000??

		do
			result := TRUE
			if p.y < 1900 or p.y > 3000 then --if year not valid, return false
				result := FALSE
			elseif p.m < 1 or p.m > 12 then --if month not valid, return false
				result := FALSE

					--rest of if statements is maing sure each month has an appropriate day

			elseif p.m = 1 and (p.d < 0 or p.d > 31) then
				result := FALSE
			elseif p.y \\ 4 /= 0 and p.m = 2 and (p.d < 0 or p.d > 28) then
				result := FALSE
			elseif p.y \\ 4 = 0 and p.m = 2 and (p.d < 0 or p.d > 29) then
				result := FALSE
			elseif p.m = 3 and (p.d < 0 or p.d > 31) then
				result := FALSE
			elseif p.m = 4 and (p.d < 0 or p.d > 30) then
				result := FALSE
			elseif p.m = 5 and (p.d < 0 or p.d > 31) then
				result := FALSE
			elseif p.m = 6 and (p.d < 0 or p.d > 30) then
				result := FALSE
			elseif p.m = 7 and (p.d < 0 or p.d > 31) then
				result := FALSE
			elseif p.m = 8 and (p.d < 0 or p.d > 31) then
				result := FALSE
			elseif p.m = 9 and (p.d < 0 or p.d > 30) then
				result := FALSE
			elseif p.m = 10 and (p.d < 0 or p.d > 31) then
				result := FALSE
			elseif p.m = 11 and (p.d < 0 or p.d > 30) then
				result := FALSE
			elseif p.m = 12 and (p.d < 0 or p.d > 31) then
				result := FALSE

					--	elseif today.year = p.y then
					--		if today.month < p.m then
					--		result := FALSE

					--	elseif today.month = p.m then
					--		if today.day < p.d then
					--			result := FALSE

					--		end

					--end

			end
		end

		--are invariants needed??

invariant
	id_consistency: l_id > 0
	dob_is_valid: tuple_valid (l_dob)
	valid_name: name1.is_empty = false and name1 [1].is_alpha

end
