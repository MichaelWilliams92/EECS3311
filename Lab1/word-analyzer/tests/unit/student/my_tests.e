note
	description: "[
		Students shall write unit tests that cause the bad routines to fail;
		and the good routines in WORD_ANALYZER_STUDENT to succeed.
		Don't change the names of the tests.
		Fill in the tests below where it says TO DO.
		]"
	author: "Michael Williams"
	date: "$Date$"
	revision: "$Revision$"

class
	MY_TESTS
inherit
	ES_TEST


create
	make

feature {NONE} -- Initialization

	make
			-- run student tests
		do
			add_boolean_case (agent t1)
			add_boolean_case (agent t2)
			add_boolean_case (agent t3)
			add_boolean_case (agent t4)
			add_boolean_case (agent t5)
			add_boolean_case (agent t6)
			add_boolean_case (agent t7)
			add_boolean_case (agent t8)
			add_boolean_case (agent t9)
			add_boolean_case (agent t10)
			add_boolean_case (agent t11)
			add_boolean_case (agent t12)
			add_boolean_case (agent t13)
			add_boolean_case (agent t14)
			add_boolean_case (agent t15)
			add_boolean_case (agent t16)
			add_boolean_case (agent t17)
			add_boolean_case (agent t18)
			add_boolean_case (agent t19)
			add_boolean_case (agent t20)
			add_boolean_case (agent t21)
			add_boolean_case (agent t22)
			add_boolean_case (agent t23)
			add_boolean_case (agent t24)
			add_boolean_case (agent t25)
			add_boolean_case (agent t26)
			add_boolean_case (agent t27)
		end

feature -- tests
--the tests below are all made to specifically test the first_repeated_character method
	t1 : BOOLEAN

	local
			wa: WORD_ANALYZER_INTERFACE
		do
			comment ("t1: first repeated character for 'hollow' is l. ensures first repeated character is found in middle of word")
			create {WORD_ANALYZER_STUDENT} wa.make ("hollow")
			Result := wa.first_repeated_character = 'l'
		end

	t2 : BOOLEAN

	local
			wa: WORD_ANALYZER_INTERFACE
		do
			comment ("t2: first repeated character for 'hholow' is h. ensures repeated character is found if at start of word")
			create {WORD_ANALYZER_STUDENT} wa.make ("hholow")
			Result := wa.first_repeated_character = 'h'
		end

	t3 : BOOLEAN

	local
			wa: WORD_ANALYZER_INTERFACE
		do
			comment ("t3: first repeated character for 'holoww' is w. ensures repeated character is found if at end of word")
			create {WORD_ANALYZER_STUDENT} wa.make ("holoww")
			Result := wa.first_repeated_character = 'w'
		end

	t4 : BOOLEAN

	local
			wa: WORD_ANALYZER_INTERFACE
		do
			comment ("t4: first repeated character for 'caoolhlloww' is o. ensures first repeated character is found when more than 1 exists")
			create {WORD_ANALYZER_STUDENT} wa.make ("caoolhlloww")
			Result := wa.first_repeated_character = 'o'
		end

	t5 : BOOLEAN

	local
			wa: WORD_ANALYZER_INTERFACE
		do
			comment ("t5: first repeated character for '19273/..=4-5=' is '.'.  Ensures correct character is found when using symbols")
			create {WORD_ANALYZER_STUDENT} wa.make ("19273/..=4-5=")
			Result := wa.first_repeated_character = '.'
		end

	t6 : BOOLEAN

	local
			wa: WORD_ANALYZER_INTERFACE
		do
			comment ("t6: No repeated character is found in 'I'. returns null character when using a 1 character string")
			create {WORD_ANALYZER_STUDENT} wa.make ("I")
			Result := wa.first_repeated_character = '%U'
		end

	t7 : BOOLEAN

	local
			wa: WORD_ANALYZER_INTERFACE
		do
			comment ("t7: No repeated character is found in 'candy'. returns null character when no match is found in a regular string")
			create {WORD_ANALYZER_STUDENT} wa.make ("candy")
			Result := wa.first_repeated_character = '%U'
		end

	t8 : BOOLEAN

	local
			wa: WORD_ANALYZER_INTERFACE
		do
			comment ("t8: No repeated character is found in '*&@^19273/.'. returns null character when no match is found in a string of numbers or special symbols")
			create {WORD_ANALYZER_STUDENT} wa.make ("*&@^19273/.")
			Result := wa.first_repeated_character = '%U'
		end

	t9 : BOOLEAN

	local
			wa: WORD_ANALYZER_INTERFACE
		do
			comment ("t9: No repeated character is found with an empty string so null character is returned")
			create {WORD_ANALYZER_STUDENT} wa.make ("")
			Result := wa.first_repeated_character = '%U'
		end

--The tests below are all made to specifically test the first_multiple_character method


	t10 : BOOLEAN

	local
			wa: WORD_ANALYZER_INTERFACE
		do
			comment ("t10: first multiple character for 'hollow' is o. ensures multiple character is found if in middle of word")
			create {WORD_ANALYZER_STUDENT} wa.make ("hollow")
			Result := wa.first_multiple_character = 'o'
		end

	t11 : BOOLEAN

	local
			wa: WORD_ANALYZER_INTERFACE
		do
			comment ("t11: first multiple character for 'hhouse' is h. ensures multiple character is found if at beginning of word")
			create {WORD_ANALYZER_STUDENT} wa.make ("hhouse")
			Result := wa.first_multiple_character = 'h'
		end

	t12 : BOOLEAN

	local
			wa: WORD_ANALYZER_INTERFACE
		do
			comment ("t12: first multiple character for 'horsee' is e. ensures multiple character is found if at the end of word")
			create {WORD_ANALYZER_STUDENT} wa.make ("horsee")
			Result := wa.first_multiple_character = 'e'
		end

	t13 : BOOLEAN

	local
			wa: WORD_ANALYZER_INTERFACE
		do
			comment ("t13: first multiple character for 'erf821sd13^#1)' is 1. ensures multiple character is found even when using symbols")
			create {WORD_ANALYZER_STUDENT} wa.make ("erf821sd13^#1)")
			Result := wa.first_multiple_character = '1'
		end

	t14 : BOOLEAN

	local
			wa: WORD_ANALYZER_INTERFACE
		do
			comment ("t14: first multiple character for 'ee' is e. ensures multiple character is found when only 2 matching characters exist")
			create {WORD_ANALYZER_STUDENT} wa.make ("ee")
			Result := wa.first_multiple_character = 'e'
		end

	t15 : BOOLEAN

	local
			wa: WORD_ANALYZER_INTERFACE
		do
			comment ("t15: no multiple character for 'e'. ensures null is returned when a string of length 1 is given")
			create {WORD_ANALYZER_STUDENT} wa.make ("e")
			Result := wa.first_multiple_character = '%U'
		end

	t16 : BOOLEAN

	local
			wa: WORD_ANALYZER_INTERFACE
		do
			comment ("t16: no multiple character for ''. ensures null is returned when given an empty string")
			create {WORD_ANALYZER_STUDENT} wa.make ("")
			Result := wa.first_multiple_character = '%U'
		end

	t17 : BOOLEAN

	local
			wa: WORD_ANALYZER_INTERFACE
		do
			comment ("t17: no multiple character for 'abcde'. ensures null is returned when no matching character exists")
			create {WORD_ANALYZER_STUDENT} wa.make ("abcde")
			Result := wa.first_multiple_character = '%U'
		end

	t18 : BOOLEAN

	local
			wa: WORD_ANALYZER_INTERFACE
		do
			comment ("t18: no multiple character for 'a26b$#cd(/e'. ensures null is returned when no matching character exists")
			create {WORD_ANALYZER_STUDENT} wa.make ("a26b$#cd(/e")
			Result := wa.first_multiple_character = '%U'
		end


--The tests below are all made to specifically test the count_repeated_characters method


	t19 : BOOLEAN

	local
			wa: WORD_ANALYZER_INTERFACE
		do
			comment ("t19: the string 'hhorrsee' has 3 groups, 'hh', 'rr' and 'ee'.  Ensures multiple character groups are picked up at the beginning, middle and end of the string ")
			create {WORD_ANALYZER_STUDENT} wa.make ("hhorrsee")
			Result := wa.count_repeated_characters = 3
		end

	t20 : BOOLEAN

	local
			wa: WORD_ANALYZER_INTERFACE
		do
			comment ("t20: the string 'hhhorrrseee' has 3 groups, 'hhh', 'rrr' and 'eee'.  Ensures multiple character groups are picked up at the beginning, middle and end of the string ")
			create {WORD_ANALYZER_STUDENT} wa.make ("hhhorrrseee")
			Result := wa.count_repeated_characters = 3
		end

	t21 : BOOLEAN

	local
			wa: WORD_ANALYZER_INTERFACE
		do
			comment ("t21: the string 'hhhorrseee!!' has 4 groups, 'hhhh', 'rr', 'eee' and '!!'.  Ensures multiple character groups are picked up at the beginning, middle and end of the string ")
			create {WORD_ANALYZER_STUDENT} wa.make ("hhhhorrseee!!")
			Result := wa.count_repeated_characters = 4
		end

	t22 : BOOLEAN

	local
			wa: WORD_ANALYZER_INTERFACE
		do
			comment ("t22: the string '11123/////4**' has 3 groups, '111', '/////' and '**'.  Ensures multiple character groups are picked up at the beginning, middle and end of the string, when comprised of special symbols ")
			create {WORD_ANALYZER_STUDENT} wa.make ("11123/////4**")
			Result := wa.count_repeated_characters = 3
		end

	t23 : BOOLEAN

	local
			wa: WORD_ANALYZER_INTERFACE
		do
			comment ("t23: the string 'hhhh'.  Ensures multiple character groups are picked up when the only group is the entire string itself")
			create {WORD_ANALYZER_STUDENT} wa.make ("hhhh")
			Result := wa.count_repeated_characters = 1
		end

	t24 : BOOLEAN

	local
			wa: WORD_ANALYZER_INTERFACE
		do
			comment ("t24: the string 'a' returns 0.  This ensures that with only 1 character, no groups are counted")
			create {WORD_ANALYZER_STUDENT} wa.make ("a")
			Result := wa.count_repeated_characters = 0
		end


	t25 : BOOLEAN

	local
			wa: WORD_ANALYZER_INTERFACE
		do
			comment ("t25: the string '' returns 0.  This ensures no groups are recorded with an empty string")
			create {WORD_ANALYZER_STUDENT} wa.make ("")
			Result := wa.count_repeated_characters = 0
		end

	t26 : BOOLEAN

	local
			wa: WORD_ANALYZER_INTERFACE
		do
			comment ("t26: the string 'abcde' returns 0.  This ensures that nothing is counted when there are no repeated groups of characters")
			create {WORD_ANALYZER_STUDENT} wa.make ("abcde")
			Result := wa.count_repeated_characters = 0
		end

	t27 : BOOLEAN

	local
			wa: WORD_ANALYZER_INTERFACE
		do
			comment ("t27: the string '213$*^-+' returns 0.  This ensures that nothing is counted when there are no repeated groups of characters when comprise of special symbols")
			create {WORD_ANALYZER_STUDENT} wa.make ("213$*^-+")
			Result := wa.count_repeated_characters = 0
		end

end
