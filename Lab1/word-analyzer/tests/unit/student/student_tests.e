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
	STUDENT_TESTS

inherit
	ES_TEST

create
	make

feature {NONE} -- Initialization

	make
			-- run student tests
		do
			add_boolean_case (agent t_frc1) -- should fail
			add_boolean_case (agent t_frc2) -- should succeed
			add_boolean_case (agent t_fmc1) -- should fail
			add_boolean_case (agent t_fmc2) -- should succeed
			add_boolean_case (agent t_crc1) -- should fail
			add_boolean_case (agent t_crc2) -- should succeed
		end

feature -- tests

	good: BOOLEAN = true
	bad : BOOLEAN = false

	make_wa(a_word:STRING; a_good: BOOLEAN): WORD_ANALYZER_INTERFACE
		do
			if a_good then
				create {WORD_ANALYZER_STUDENT} Result.make (a_word)
			else
				create {WORD_ANALYZER_BAD} Result.make (a_word)
			end
		end

feature -- first repeated character tests
	frc_test_string : STRING = "horse"

	t_frc1: BOOLEAN
		local
			wa: WORD_ANALYZER_INTERFACE
		do
			comment("t_frc1: fail on WORD_ANALYZER_BAD")
			wa := make_wa (frc_test_string, bad)
					Result := wa.first_repeated_character = '%U'

		end --if there is no repeated character, the test will fail

	t_frc2: BOOLEAN
		local
			wa: WORD_ANALYZER_INTERFACE
		do
			comment("t_frc2: succeed on WORD_ANALYZER_STUDENT")
			wa := make_wa (frc_test_string, good)
				Result := wa.first_repeated_character = '%U'

		end --if there is no repeated character, the test will pass

feature -- first mutiple character tests
	fmc_test_string: STRING = "horse"

	t_fmc1: BOOLEAN
		local
			wa: WORD_ANALYZER_INTERFACE
		do
			comment("t_frc1: fail on WORD_ANALYZER_BAD")
			wa := make_wa (fmc_test_string, bad)
			Result := wa.first_multiple_character = '%U'
		end--if there is no repeated character, the test will fail

	t_fmc2: BOOLEAN
		local
			wa: WORD_ANALYZER_INTERFACE
		do
			comment("t_frc2: succeed on WORD_ANALYZER_STUDENT")
			wa := make_wa (fmc_test_string, good)
			Result := wa.first_multiple_character = '%U'
		end--if there is no repeated character, the test will pass

feature -- count repeated characters tests
	crc_test_string: STRING = "hhorrrssse!!"

	t_crc1: BOOLEAN
		local
			wa: WORD_ANALYZER_INTERFACE
			nr: INTEGER
		do
			comment("t_frc1: fail on WORD_ANALYZER_BAD")
			wa := make_wa (crc_test_string, bad)
			nr := wa.count_repeated_characters
			Result := nr = 4
		end

	t_crc2: BOOLEAN
			-- New test routine
		local
			wa: WORD_ANALYZER_INTERFACE
			nr: INTEGER
		do
			comment("t_frc2: succeed on WORD_ANALYZER_STUDENT")
			wa := make_wa (crc_test_string, good)
			nr := wa.count_repeated_characters
			Result := nr = 4
		end

end
