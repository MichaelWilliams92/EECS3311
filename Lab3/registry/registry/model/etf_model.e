note
	description: "A default business model."
	author: "Jackie Wang"
	date: "$Date$"
	revision: "$Revision$"

class
	REGISTRY

inherit

	ANY
		redefine
			out
		end

create {REGISTRY_ACCESS}
	make

feature {NONE} -- Initialization

	make
		do
			create {SORTED_TWO_WAY_LIST [RESIDENT]} resident.make
			resident.compare_objects
			create s.make_empty
			i := 0
			create today.make_now
		end

feature -- model attributes

	s: STRING

	i: INTEGER

	today: DATE

		--	name: STRING
		--	id: INTEGER
		--	dob: TUPLE[d: INTEGER_64; m: INTEGER_64; y: INTEGER_64]
		--	country: STRING

	resident: LIST [RESIDENT]
			-- list of all bank customers

feature -- model operations

	default_update
			-- Perform update to the model state.
		do
			i := i + 1
		end

	reset
			-- Reset model state.
		do
			make
		end

feature -- queries

	out: STRING
		local
			p: STRING
		do
			p := ""
			create Result.make_empty
			Result := report --not sure if it works but w/e

			if Result.is_empty then
				Result := "  ok"
			end
			from
				resident.start
			until
				resident.after
			loop
				if resident.item.alive = FALSE then
					p := "Deceased"
				elseif resident.item.alive = TRUE then
					if resident.item.married = false then
						p := "Single"
					elseif resident.item.married = true then
						p := "Spouse: " + resident.item.spouse_name + "," + resident.item.spouse_id.out + ",["
						p := p + resident.item.marriage_date.y.out + "-"
						if resident.item.marriage_date.m < 10 then
							p := p + "0" + resident.item.marriage_date.m.out
						else
							p := p + resident.item.marriage_date.m.out
						end
						if resident.item.marriage_date.d < 10 then
							p := p + "-" + "0" + resident.item.marriage_date.d.out + "]"
						else
							p := p + "-" + resident.item.marriage_date.d.out + "]"
						end --else it should pull up their marriage info

					end
				end
				Result := Result + "%N  " + resident.item.l_name.out + "; ID: " + resident.item.l_id.out + "; Born: ["
				Result := Result + resident.item.l_dob.y.out
				if resident.item.marriage_date.m < 10 then
					Result := Result + "-" + "0" + resident.item.l_dob.m.out
				else
					Result := Result + "-" + resident.item.l_dob.m.out
				end
				if resident.item.marriage_date.d < 10 then
					Result := Result + "-" + "0" + resident.item.l_dob.m.out + "]"
				else
					Result := Result + "-" + resident.item.l_dob.d.out + "]"
				end --else it should pull up their marriage info

				Result := Result + "; Citizen: " + resident.item.l_country.out + "; " + p.out
				resident.forth
			end
				--	Result.append ("System State: default model state ")
				--	Result.append ("(")
				--	Result.append (i.out)
				--	Result.append (")")
			report := ""
		end

feature --routines

	put (id1: INTEGER_64; name1: STRING; dob1: TUPLE [d: INTEGER_64; m: INTEGER_64; y: INTEGER_64])
		require
			id_positive: id1 > 0
			resident_dosent_exist: resident_exists (id1) = FALSE
			valid_name: name1.is_empty = false and (name1 [1].is_alpha = true)
			valid_date: tuple_valid (dob1)
		local
			res: RESIDENT
		do
			create res.make_cit (id1, name1, dob1)
			resident.extend (res)
		ensure
			resident_unchanged_other_than: residents_unchanged_other_than (id1, old resident.deep_twin)
			resident_exists_in_list: resident_exists (id1)
			resident_name_valid: resident [find (id1)].l_name ~ name1
			resident_id_valid: resident [find (id1)].l_id ~ id1
			resident_dob_valid: resident [find (id1)].l_dob ~ dob1
			resident_country_valid: resident [find (id1)].l_country ~ "Canada"
			resident_single: resident [find (id1)].married = false
			resident_no_spouse: resident [find (id1)].spouse_id ~ 0
		--	resident_no_marrieage_date: resident[find(id1)].marriage_date ~ [0,0,0]
			resident_alive: resident [find (id1)].alive = true
		end

	put_alien (id1: INTEGER_64; name1: STRING; dob1: TUPLE [d: INTEGER_64; m: INTEGER_64; y: INTEGER_64]; country: STRING)
		require
			id_positive: id1 > 0
			resident_dosent_exist: resident_exists (id1) = FALSE
			valid_name: name1.is_empty = false and (name1 [1].is_alpha = true)
			valid_country: country.is_empty = false and (country [1].is_alpha = true)
			valid_date: tuple_valid (dob1)
		local
			res: RESIDENT
		do
			create res.make_alien (id1, name1, dob1, country)
			resident.extend (res)
		ensure
			resident_unchanged_other_than: residents_unchanged_other_than (id1, old resident.deep_twin)
			resident_exists_in_list: resident_exists (id1)
			resident_name_valid: resident [find (id1)].l_name ~ name1
			resident_id_valid: resident [find (id1)].l_id ~ id1
			resident_dob_valid: resident [find (id1)].l_dob ~ dob1
			resident_country_valid: resident [find (id1)].l_country ~ country
			resident_single: resident [find (id1)].married = false
			resident_no_spouse: resident [find (id1)].spouse_id ~ 0
		--	resident_no_marrieage_date: resident[find(id1)].marriage_date ~ [0,0,0]
			resident_alive: resident [find (id1)].alive = true
		end

	marry (id1: INTEGER_64; id2: INTEGER_64; date: TUPLE [d: INTEGER_64; m: INTEGER_64; y: INTEGER_64])
			--idea is that ill find those residents corresponding to the id and assign their spouse id and change married to true

		require
			ids_positive: id1 > 0 and id2 > 0
			not_same_ids: id1 /~ id2 and id1 /= id2
			residents_exists: resident_exists (id1) = true and resident_exists (id2) = true
			valid_date: tuple_valid (date)
			neithor_married: resident [find (id1)].married = false and resident [find (id2)].married = false
		--	both_alive:  resident[find(id1)].alive and resident[find(id2)].alive
			both_over_18: over_18 (id1, date) and over_18 (id2, date)
		do

				--assign info to id1

			resident [find (id1)].change_spouse (id2, resident [find (id2)].l_name)
			resident [find (id1)].marry (date)
			resident [find (id2)].change_spouse (id1, resident [find (id1)].l_name)
			resident [find (id2)].marry (date)

				--use find method to get index of id1 and id2's resident
				--assign that resident the spouse id
				--do with both ids given
				--switch married boolean to true
				--find way to add date tuple

		ensure
			resident_unchanged_other_than: residents_unchanged_other_than_both (id1, id2, old resident.deep_twin)
			residents_exists_in_list: resident_exists (id1) and resident_exists (id2)
			resident_names_unchanged: (old resident [find (id1)].l_name ~ resident [find (id1)].l_name) and (old resident [find (id2)].l_name ~ resident [find (id2)].l_name)
			resident_ids_unchanged: (old resident [find (id1)].l_id = resident [find (id1)].l_id) and old (resident [find (id2)].l_id = resident [find (id2)].l_id)
			resident_dobs_unchanged: (old resident [find (id1)].l_dob ~ resident [find (id1)].l_dob) and (old resident [find (id2)].l_dob ~ resident [find (id2)].l_dob)
			resident_countries_unchanged: (old resident [find (id1)].l_country ~ resident [find (id1)].l_country) and (old resident [find (id2)].l_country ~ resident [find (id2)].l_country)
			residents_married: resident [find (id1)].married and resident [find (id2)].married
			residents_spouse: resident [find (id1)].spouse_id ~ id2 and resident [find (id2)].spouse_id ~ id1
			residents_marriage_date: resident [find (id1)].marriage_date ~ date and resident [find (id2)].marriage_date ~ date
			--residents_alive: resident[find(id1)].alive and  resident[find(id2)].alive

		end

	divorce (a_id1: INTEGER_64; a_id2: INTEGER_64)
			--divorce the two, meaning their spouse ID and arriage date are reset, and marry boolean becomes false

		require
			ids_positive: a_id1 > 0 and a_id2 > 0
			not_same_ids: a_id1 /~ a_id2 and a_id1 /= a_id2
			residents_exists: resident_exists (a_id1) = true and resident_exists (a_id2) = true
			both_alive: resident [find (a_id1)].alive and resident [find (a_id2)].alive
			residents_married: resident [find (a_id1)].married and resident [find (a_id2)].married
			married_to_each_other: resident [find (a_id1)].spouse_id ~ a_id2 and resident [find (a_id2)].spouse_id ~ a_id1
		do
			resident [find (a_id1)].change_spouse (0, "") --spouse ID is 0 if not married, ie the dafult value
			resident [find (a_id1)].seperate
			resident [find (a_id2)].change_spouse (0, "") --spouse ID is 0 if not married, ie the dafult value
			resident [find (a_id2)].seperate
		ensure
			resident_unchanged_other_than: residents_unchanged_other_than_both (a_id1, a_id2, old resident.deep_twin)
			residents_exists_in_list: resident_exists (a_id1) and resident_exists (a_id2)
			resident_names_unchanged: (old resident [find (a_id1)].l_name ~ resident [find (a_id1)].l_name) and (old resident [find (a_id2)].l_name ~ resident [find (a_id2)].l_name)
			resident_ids_unchanged: (old resident [find (a_id1)].l_id = resident [find (a_id1)].l_id) and old (resident [find (a_id2)].l_id = resident [find (a_id2)].l_id)
			resident_dobs_unchanged: (old resident [find (a_id1)].l_dob ~ resident [find (a_id1)].l_dob) and (old resident [find (a_id2)].l_dob ~ resident [find (a_id2)].l_dob)
			resident_countries_unchanged: (old resident [find (a_id1)].l_country ~ resident [find (a_id1)].l_country) and (old resident [find (a_id2)].l_country ~ resident [find (a_id2)].l_country)
			residents_single: resident [find (a_id1)].married = false and resident [find (a_id2)].married = false
			residents_spouse_default: resident [find (a_id1)].spouse_id ~ 0 and resident [find (a_id2)].spouse_id ~ 0
			--	residents_marriage_date: resident[find(a_id1)].marriage_date ~ [0,0,0] and resident[find(a_id2)].marriage_date ~ [0,0,0]
			residents_alive: resident [find (a_id1)].alive and resident [find (a_id2)].alive
		end

	die (id: INTEGER_64)
			--person dies
			--how do i ensure the possible other id dosent change

		require
			id_positive: id > 0
			residents_exists: resident_exists (id) = true
			still_alive: resident [find (id)].alive = true
		do
			if resident [find (id)].married = true then
				divorce (id, resident [find (id)].spouse_id)
			end
			resident [find (id)].die
		ensure
			resident_unchanged_other_than: residents_unchanged_other_than (id, old resident.deep_twin)
			residents_exists_in_list: resident_exists (id)
			resident_names_unchanged: old resident [find (id)].l_name ~ resident [find (id)].l_name
			resident_ids_unchanged: old resident [find (id)].l_id = resident [find (id)].l_id
			resident_dobs_unchanged: old resident [find (id)].l_dob ~ resident [find (id)].l_dob
			resident_countries_unchanged: old resident [find (id)].l_country ~ resident [find (id)].l_country
			resident_not_married: resident [find (id)].married = FALSE
			resident_has_no_spouse: resident [find (id)].spouse_id ~ 0
				--	residents_marriage_date_reset: resident[find(id)].marriage_date ~ [0,0,0]
			resident_dead: resident [find (id)].alive = FALSE
		end

feature --queries

	find (id1: INTEGER_64): INTEGER --returns index of id1's associated resident

		require
			id_positive: id1 > 0
			residents_exists: resident_exists (id1) = true
		local
			q: INTEGER
		do
			from
				i := 1
			until
				i > resident.count or Result /= 0
			loop
				if resident [i].l_id ~ id1 then
					Result := i
				end
				i := i + 1
			end

				--add ensure case, use across

		end

	resident_exists (id1: INTEGER_64): BOOLEAN
			-- Is resident id1 in the list?

		require
			id_positive: id1 > 0
		do
			from
				resident.start
			until
				resident.after or Result = TRUE
			loop
				if resident.item.l_id ~ id1 then
					Result := true
				end
				resident.forth
			end
				--ensure
				--	comment("EXISTS c in customers: c.name = a_name") --do actual ensure later
		end

	tuple_valid (p: TUPLE [d: INTEGER_64; m: INTEGER_64; y: INTEGER_64]): BOOLEAN
			--ensures tuple contains valid values
			--what is the valid range of years?? 1900-3000??
			--accomodate for leap years
			--can date be greater than today??
			--any requirements?? i dont think so

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

					--	elseif today.year < p.y then
					--		result := FALSE

					--	elseif today.year = p.y then
					--		if today.month < p.m then
					--			result := FALSE

					--		elseif today.month = p.m then
					--			if today.day < p.d then
					--				result := FALSE

					--	end

					--	end

			end
		end

	residents_unchanged_other_than (id: INTEGER_64; old_residents: like resident): BOOLEAN
			-- Are residents other than `id' unchanged?
			--do i need to strengthen this??
		local
			c_id: INTEGER_64
		do
			from
				Result := true
				resident.start
			until
				resident.after or not Result
			loop
				c_id := resident.item.l_id
				if c_id /~ id then
					Result := Result and then old_residents.has (resident.item)
				end
				resident.forth
			end
		ensure
			Result = across resident as c all c.item.l_id /~ id IMPLIES old_residents.has (c.item) end
		end

	residents_unchanged_other_than_both (id1: INTEGER_64; id2: INTEGER_64; old_residents: like resident): BOOLEAN
			-- Are customers other than `a_name' and a_name2 unchanged?
		local
			c_id: INTEGER_64
		do
			from
				Result := true
				resident.start
			until
				resident.after or not Result
			loop
				c_id := resident.item.l_id
				if c_id /~ id1 and c_id /~ id2 then
					Result := Result and then old_residents.has (resident.item) --bs
				end
				resident.forth
			end
		ensure
			Result = across resident as c all c.item.l_id /~ id1 and c.item.l_id /~ id2 IMPLIES old_residents.has (c.item) end
		end

	over_18 (id: INTEGER_64; date: TUPLE [d: INTEGER_64; m: INTEGER_64; y: INTEGER_64]): BOOLEAN
			--is resident above legal age

		local
			legal: BOOLEAN
		do
			legal := false
			if date.y - resident [find (id)].l_dob.y > 18 then
				legal := true -- over 18 years old, person id legal

			elseif date.y - resident [find (id)].l_dob.y = 18 then --otherwise compare the months and see if person is 18

				if date.m > resident [find (id)].l_dob.m then
					legal := true
				elseif date.m = resident [find (id)].l_dob.m then --otherwise compare the days to see if persons age is 18

					if date.d >= resident [find (id)].l_dob.d then
						legal := true
					end
				end
			end
			result := legal
		end

feature --error handling

	set_message (error: STRING)
		do
			report := error
		end

feature {ETF_COMMAND}

	report: STRING
		attribute
			create Result.make_empty
		end

	err_id_nonpositive: STRING
		attribute
			Result := "  id must be positive"
		end

	err_id_unused: STRING
		attribute
			Result := "  id not identified with a person in database"
		end

	err_id_same: STRING
		attribute
			Result := "  ids must be different"
		end

	err_id_taken: STRING
		attribute
			Result := "  id already taken"
		end

	err_name_start: STRING
		attribute
			Result := "  name must start with A-Z or a-z"
		end

	err_country_start: STRING
		attribute
			Result := "  country must start with A-Z or a-z"
		end

	err_invalid_date: STRING
		attribute
			Result := "  not a valid date in 1900..3000"
		end

	err_marry: STRING
		attribute
			Result := "  proposed marriage invalid"
		end

	err_divorce: STRING
		attribute
			Result := "  these are not married"
		end

	err_dead_already: STRING
		attribute
			Result := "  person with that id already dead"
		end

		--	id_non_positive: STRING
		--	attribute Result:= "id must be positive %N" end

		--	id_unused: STRING
		--	attribute Result:= "id not identified with a person in database %N" end

		--	ids_different: STRING
		--	attribute Result:= "ids must be different %N" end

		--	invalid_date: STRING
		--	attribute Result:= "not a valid date in 1900..3000 %N" end

		--	name_start: STRING
		--	attribute Result:= "name must start with A-Z or a-z %N" end

		--	country_start: STRING
		--	attribute Result:= "country must start with A-Z or a-z %N" end

		--	invalid_marriage: STRING
		--	attribute Result:= "proposed marriage invalid %N" end

end
