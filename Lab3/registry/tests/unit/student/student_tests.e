note
	description: "Studenst write their tessts here"
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	RESIDENT_TESTER

inherit
	ES_TEST

create
	make

feature {NONE} -- Initialization

	make
			-- Initialization for `Current'.
		do


			add_boolean_case (agent t1)
			add_violation_case_with_tag ("change_spouse value not above 0", agent t2)
			add_boolean_case (agent t3)
			add_boolean_case (agent t4)
			add_boolean_case (agent t5)
			add_boolean_case (agent t6)
		end

feature -- tests that ensure resident class works as its supposed to
		--maybe test for equality later if time permits


	t1: BOOLEAN
		local
			r: RESIDENT
			s: RESIDENT

			d: INTEGER_64
			m: INTEGER_64
			y: INTEGER_64
			id: INTEGER_64
		do

			comment("t1: test change_spouse.  Ensures spouse id's change to appropriate value")

			id := 1
			d := 25
			m := 8
			y := 2008
			create r.make_cit (id, "Bob", [d,m,y])
			id := 3
			d := 25
			m := 6
			y := 1995
			create s.make_alien (id, "Alex", [d,m,y], "America")
			m := 29
			d:= 11
			--r.change_spouse (m)
		--	s.change_spouse (d)

			result := r.spouse_id = m and s.spouse_id = d

		end



	t2
		local
			s: RESIDENT

			d: INTEGER_64
			m: INTEGER_64
			y: INTEGER_64
			id: INTEGER_64
		do

			comment("t2: test change_spouse.  Ensures value <= 0 won't work")

			id := 3
			d := 25
			m := 6
			y := 1995
			create s.make_alien (id, "Alex", [d,m,y], "America")
			d:= -23
			--s.change_spouse (d)

		end

	t3: BOOLEAN
		local
			r: RESIDENT
			s: RESIDENT

			d: INTEGER_64
			m: INTEGER_64
			y: INTEGER_64
			id: INTEGER_64
			p: TUPLE[d: INTEGER_64; m: INTEGER_64; y: INTEGER_64]
		do

			comment("t3: tests marry function.  Makes sure that marry is changed to true")

			id := 1
			d := 25
			m := 8
			y := 2008
			create r.make_cit (id, "Bob", [d,m,y])
			id := 3
			d := 25
			m := 6
			y := 1995
			create s.make_alien (id, "Alex", [d,m,y], "America")
			d := 19
			m := 1
			y := 1992
			p := [d, m, y]
			r.marry (d,m,y)
			s.marry (d,m,y)

			result := r.married = TRUE and s.married = TRUE and r.marriage_date ~ p and s.marriage_date ~ p

		end

	t4: BOOLEAN --implement properly
		local
			r: RESIDENT
		do
			comment("t4: tests marry function.  Ensures an incorrect tuple will result in a violation")
			Result := false
		end

	t5: BOOLEAN
	local
			r: RESIDENT
			s: RESIDENT

			d: INTEGER_64
			m: INTEGER_64
			y: INTEGER_64
			id: INTEGER_64
			p: TUPLE[d: INTEGER_64; m: INTEGER_64; y: INTEGER_64]
		do

			comment("t5: tests seperate function. Ensures married and tuple attributs are reset to default")

			id := 1
			d := 25
			m := 8
			y := 2008
			create r.make_cit (id, "Bob", [d,m,y])
			id := 3
			d := 25
			m := 6
			y := 1995
			create s.make_alien (id, "Alex", [d,m,y], "America")
			d := 19
			m := 1
			y := 1992
			p := [d, m, y]
			r.marry (d,m,y)
			s.marry (d,m,y)
			d := 0
			m := 0
			y := 0
			p := [d, m, y]

			r.seperate
			s.seperate

			result := r.married = FALSE and s.married = FALSE and r.marriage_date.d ~ 0 and r.marriage_date.m ~ 0 and r.marriage_date.y ~ 0
			--try making that a little shorter
		end


	t6: BOOLEAN
	local
			r: RESIDENT
			s: RESIDENT

			d: INTEGER_64
			m: INTEGER_64
			y: INTEGER_64
			id: INTEGER_64
			p: TUPLE[d: INTEGER_64; m: INTEGER_64; y: INTEGER_64]
		do

			comment("t6: tests die function. Ensures alive is set to false")

			id := 1
			d := 25
			m := 8
			y := 2008
			create r.make_cit (id, "Bob", [d,m,y])
			id := 3
			d := 25
			m := 6
			y := 1995
			create s.make_alien (id, "Alex", [d,m,y], "America")

			r.die
			s.die

			result := r.alive = FALSE and s.alive = FALSE

		end


end

