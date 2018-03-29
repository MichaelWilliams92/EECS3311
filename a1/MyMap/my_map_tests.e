note
	description: "Class implementing the unit tests for MY_MAP"
	author: "PPawluk"
	date: "2013 May 9"
  	version: 1.0

class
	MY_MAP_TESTS
inherit
	ES_TEST
create
	make
--$ISE_PRECOMP
feature
	make
	do
		add_boolean_case(agent t0)
	--	add_boolean_case(agent t0_1)
	--	add_boolean_case(agent t0_2)
		--add_boolean_case(agent t0_3)
	--	add_boolean_case(agent t0_4)
		add_boolean_case(agent t1)
		add_boolean_case(agent t2)
		add_boolean_case(agent t3)
		add_boolean_case(agent t4)
		add_boolean_case(agent t5)
		add_boolean_case(agent t6)
		add_boolean_case(agent t7)
		add_boolean_case(agent t8)
		add_boolean_case(agent t9)
		add_boolean_case(agent t10)
		add_boolean_case(agent t11)
		add_boolean_case(agent t12)
		add_boolean_case(agent t13)
		add_boolean_case(agent t14)
		add_boolean_case(agent t15)
		add_boolean_case(agent t16)
		add_boolean_case(agent t17)
		--add_boolean_case(agent t18)
		--add_boolean_case(agent t19)
		--add_boolean_case(agent t20)
		add_boolean_case(agent t21)
		add_boolean_case(agent t22)
		add_boolean_case(agent t23)
		add_boolean_case(agent t24)
		add_boolean_case(agent t25)
		add_boolean_case(agent t26)
		add_boolean_case(agent t27)
		add_boolean_case(agent t28)
		add_boolean_case(agent t29)
		add_boolean_case(agent t30)
		add_boolean_case(agent t31)
		add_boolean_case(agent t32)
		add_boolean_case(agent t33)
		add_boolean_case(agent t34)
		add_boolean_case(agent t35)
		add_boolean_case(agent t36)
		add_boolean_case(agent t37)
--		add_boolean_case(agent t38)
--		add_boolean_case(agent t39)
--		add_boolean_case(agent t40)
--		add_boolean_case(agent t41)
--		add_boolean_case(agent t42)
--		add_boolean_case(agent t43)
--		add_boolean_case(agent t44)
--		add_boolean_case(agent t45)
--		add_boolean_case(agent t46)
--		add_boolean_case(agent t47)
--		add_boolean_case(agent t48)
--		add_boolean_case(agent t49)
		add_boolean_case(agent t50)
		add_boolean_case(agent t51)
		add_boolean_case(agent t52)
		add_boolean_case(agent t53)
		add_boolean_case(agent t54)
		add_boolean_case(agent t55)
		add_violation_case (agent v1)
		add_violation_case (agent v2)
		add_violation_case (agent v3)
	--	add_violation_case (agent v4)
		add_violation_case (agent v5)
	end

feature -- tests
	m:MY_MAP[STRING,INTEGER]
	map_test1:MY_MAP[STRING,INTEGER]
	map_test2:MY_MAP[INTEGER,INTEGER]
	map_test3:MY_MAP[CHARACTER,INTEGER]
	t0: BOOLEAN
		local
			map: MY_MAP[STRING, INTEGER]
			key: STRING
			val: INTEGER
		do

			create map.make
			key := "k1"
			val:= 1
			map.put(key, val)

			comment("t0: put record")
			Result := map.has(key, val)
		end

	t0_1: BOOLEAN
		local
			map: MY_MAP[STRING, INTEGER]
			key: STRING
			val: INTEGER
		do

			create map.make
			key := "k1"
			val:= 0
			map.put(key, val)

			comment("t0_1: put record when val = 0")
			print(map.get (key))
			Result := map.has(key, val)

		end

	t0_2: BOOLEAN
		local
			map: MY_MAP[STRING, INTEGER]
			key: STRING
			val: INTEGER
		do

			create map.make
			key := "k1"
			map.put(key, val)

			comment("t0_2: put record when val is not assigned")
			print(map.get(key))
			Result := (map.get(key) = 0)
		end

	t0_3: BOOLEAN --this test case wont happen anymore due to the put precondition
		local
			map: MY_MAP[STRING, CHARACTER]
			key: STRING
			val: CHARACTER
		do

			create map.make
			key := "k1"
			val:= ' '
			map.put(key, val)

			comment("t0_3: put record when val = 0")
			print("hello:")
			--print(map.get (key))
			print("This is first what you get")
			Result := true

		end

	t0_4: BOOLEAN --wont be a problem anymore because of put precondition
		local
			map: MY_MAP[STRING, CHARACTER]
			key: STRING
			val: CHARACTER
		do

			create map.make
			key := "k1"
			map.put(key, val)

			comment("t0_4: put record when val not assigned with character")
			print("hello")
			print(map.get(key))
			print("The above is what you get")
			Result := true
		end
	t1: BOOLEAN
		local
			map: MY_MAP[STRING, STRING]
			key: STRING
			val: STRING
			v: STRING
		do
			create map.make

			key := "k1"
			val:= "1"
			map.put(key, val)
			v:= map.get(key)
			comment("t1: get")
			if v=void then
				Result := false
			else
				Result := val.is_equal (v)
			end
		end

	t2:BOOLEAN
		local
			map: MY_MAP[STRING, INTEGER]
			key: STRING
			val: INTEGER

		do
			create map.make
			map.put ("k0", 0)
			key := "k1"
			val:= 1
			map.put(key, val)
			Result:= map.has(key,val)
			map.remove(key);
			comment("t2: remove record")
			Result:= Result AND NOT map.has(key,val)
		end

	t3:BOOLEAN
		local
			map: MY_MAP[STRING, INTEGER]
			key: STRING
			val: INTEGER
		--	i:SET[STRING]

		do
			prepare_map
			map:= m

			key := "key1"
			val:= 2
			map.put(key, val)

			comment("t3: correct add")
			Result:= map.has(key,2)  AND map.has1 (key)
			ensure
				m.has("key1",2) AND m.has1 ("key1")
		end
-------------------------------------------------------------------------------------------------
--remaining t test cases are mine

	t4:BOOLEAN
		local
			map: MY_MAP[STRING, INTEGER]
		--	key: STRING
		--	val: INTEGER
			i:LINKED_SET[STRING]
			j:SET[STRING]

		do
			prepare_map
			map:= m

			map.put ("key1", 3)

			create i.make
			j := m.key_set
			i.fill (j)

			from i.start until i.exhausted loop
				print(i.item.to_string_8 + "%N")
				i.forth
			end


			comment("t4: set_KEY test")
			Result:= true
		end

		t5:BOOLEAN
		local
			map: MY_MAP[STRING, INTEGER]
		--	key: STRING
		--	val: INTEGER
			i:LINKED_SET[INTEGER]
			j:SET[INTEGER]

		do
			prepare_map
			map:= m

			map.put ("key1", 3)

			create i.make
			j := m.value_set
			i.fill (j)

			from i.start until i.exhausted loop
				print(i.item)
				print("%N")
				i.forth
			end

			from map.list.start until map.list.exhausted loop
				print(map.list.item.getvalue)
				print("%N")
				map.list.forth
			end


			comment("t5: set_VAL test")
			Result:= true
		end

		t6: BOOLEAN
			local
				map: MY_MAP[STRING, STRING]
				key: STRING
				val: STRING
			--	v: STRING
			do
				create map.make

				key := "k1"
				val:= "1"

				map.put (key, val)


				comment("t6: testing has1")
				Result := map.has1 (key)
			end

		t7: BOOLEAN
		local
			map: MY_MAP[STRING, STRING]
			key: STRING
			val: STRING
			v: STRING
		do
			create map.make

			Result := false
			key := "k1"
			val:= "1"
			map.put(key, val)
			v:= map.get("k3")
			comment("t7: testing that get method returns void succesfully")
			if v=void then
				Result := true
			end
		end

		t8: BOOLEAN  --ISSUe needs to be fixed
			local
				map: MY_MAP[STRING, INTEGER]
				key: STRING
				val: INTEGER
				v: INTEGER
			do
				create map.make

				Result := false
				key := "k1"
				val:= 1
				map.put(key, val)
				v:= map.get("k3")
				comment("t8: making sure that get returns 0 successfully")
				if v=0 then
					Result := true
				end
			end
-----------------------------------------------------------------------------------------------
--tests specifically for put function
-----------------------------------------------------------------------------------------------
		t9: BOOLEAN
			local
				map: MY_MAP[INTEGER, INTEGER]
				key: INTEGER
				val: INTEGER
			do

				create map.make
				key := 5
				val:= 1
				map.put(key, val)

				key := 2
				val:= 1
				map.put(key, val)

				key := 5
				val:= 4
				map.put(key, val)



				comment("t9: put record working with key=integer")
				Result := map.has(2, 1) and map.has (5, 4) and (map.has(5,1) = false)
				from map.list.start until map.list.exhausted loop
					print(map.list.item.getkey)
					print("%N")
					print(map.list.item.getvalue)
					print("%N")
					map.list.forth
				end
			end

			t10: BOOLEAN
			local
				map: MY_MAP[CHARACTER, INTEGER]
				key: CHARACTER
				val: INTEGER
			do

				create map.make
				key := 'c'
				val:= 1
				map.put(key, val)

				key := 'f'
				val:= 1
				map.put(key, val)

				key := 'c'
				val:= 4
				map.put(key, val)

				comment("t10: put record working with key=CHARACTER")
				Result := map.has('f', 1) and map.has ('c', 4)

				from map.list.start until map.list.exhausted loop
					print(map.list.item.getkey)
					print("%N")
					print(map.list.item.getvalue)
					print("%N")
					map.list.forth
				end
			end

			t11: BOOLEAN
					local
						map: MY_MAP[STRING, INTEGER]
						key: STRING
						val: INTEGER
					do

						create map.make
						key := "hello"
						val:= 1
						map.put(key, val)

						key := "goodbye"
						val:= 1
						map.put(key, val)

						key := "hello"
						val:= 4
						map.put(key, val)

						comment("t11: put record working with key=STRING")
						Result := map.has("goodbye",1) and map.has ("hello", 4)

						from map.list.start until map.list.exhausted loop
							print(map.list.item.getkey)
							print("%N")
							print(map.list.item.getvalue)
							print("%N")
							map.list.forth
						end
					end
			t12: BOOLEAN
				local
					map: MY_MAP[INTEGER, INTEGER]
					key: INTEGER
					val: INTEGER
				do

					create map.make
					key := 5
					val:= 1
					map.put(key, val)

					key := 2
					val:= 1
					map.put(key, val)

					key := 5
					val:= 4
					map.put(key, val)



					comment("t12: put record working with value=integer")
					Result := map.has(2, 1) and map.has (5, 4)
					from map.list.start until map.list.exhausted loop
						print(map.list.item.getkey)
						print("%N")
						print(map.list.item.getvalue)
						print("%N")
						map.list.forth
					end
				end

			t13: BOOLEAN
				local
					map: MY_MAP[CHARACTER, CHARACTER]
					key: CHARACTER
					val: CHARACTER
				do

					create map.make
					key := 'c'
					val:= 'f'
					map.put(key, val)

					key := 'f'
					val:= 'f'
					map.put(key, val)

					key := 'c'
					val:= 'a'
					map.put(key, val)

					comment("t13: put record working with value=CHARACTER")
					Result := map.has('f', 'f') and map.has ('c', 'a')

					from map.list.start until map.list.exhausted loop
						print(map.list.item.getkey)
						print("%N")
						print(map.list.item.getvalue)
						print("%N")
						map.list.forth
					end
				end

				t14: BOOLEAN
						local
							map: MY_MAP[STRING, STRING]
							key: STRING
							val: STRING
						do

							create map.make
							key := "hello"
							val:= "good"
							map.put(key, val)

							key := "goodbye"
							val:= "good"
							map.put(key, val)

							key := "hello"
							val:= "baaadd"
							map.put(key, val)

							comment("t14: put record working with val=STRING")
							Result := map.has("goodbye","good") and map.has ("hello", "baaadd")

							from map.list.start until map.list.exhausted loop
								print(map.list.item.getkey)
								print("%N")
								print(map.list.item.getvalue)
								print("%N")
								map.list.forth
							end
						end



-----------------------------------------------------------------------------------------------------
--tests specifically for the get function
------------------------------------------------------------------------------------------------------

		t15: BOOLEAN
			local
				map: MY_MAP[INTEGER, INTEGER]
				key: INTEGER
				val: INTEGER
				get: INTEGER
			do

				create map.make
				key := 5
				val:= 1
				map.put(key, val)

				key := 2
				val:= 3
				map.put(key, val)

				get := map.get (key)

				comment("t15: get record working with value=integer and return /= void")
				Result := (get = 3)
					print(get)
					print("%N")
			end

			t16: BOOLEAN
				local
					map: MY_MAP[CHARACTER, CHARACTER]
					key: CHARACTER
					val: CHARACTER
					get: CHARACTER
				do

					create map.make
					key := 'c'
					val:= 'f'
					map.put(key, val)

					key := 'f'
					val:= 'a'
					map.put(key, val)

					get := map.get (key)

					comment("t16: get record working with value=CHARACTER and return /= void")
					Result := (get = 'a')

						print(get)
						print("%N")
				end

				t17: BOOLEAN
						local
							map: MY_MAP[STRING, STRING]
							key: STRING
							val: STRING
							get: STRING
						do

							create map.make
							key := "hello"
							val:= "good"
							map.put(key, val)

							key := "goodbye"
							val:= "bad"
							map.put(key, val)

							get := map.get (key)

							comment("t17: get record working with val=STRING and result /= void")
							Result := (get = val)

								print(get)
								print("%N")
						end

				t18: BOOLEAN
					local
						map: MY_MAP[INTEGER, INTEGER]
						key: INTEGER
						val: INTEGER
						get: INTEGER
					do

						create map.make
						key := 5
						val:= 1
						map.put(key, val)

						key := 2
						val:= 3
						map.put(key, val)

						get := map.get (12)

						comment("t18: get record working with key=integer and return = void")
						Result := false
						print(get)
						print("%N")
					end

					t19: BOOLEAN
						local
							map: MY_MAP[CHARACTER, CHARACTER]
							key: CHARACTER
							val: CHARACTER
							get: CHARACTER
						do

							create map.make
							key := 'c'
							val:= 'f'
							map.put(key, val)

							key := 'f'
							val:= 'a'
							map.put(key, val)

							get := map.get ('z')

							comment("t19: get record working with value=CHARACTER and return = void")
							Result := false

							print(get)
							print("%N")
						end

						t20: BOOLEAN
								local
									map: MY_MAP[STRING, STRING]
									key: STRING
									val: STRING
									get: STRING
								do

									create map.make
									key := "hello"
									val:= "good"
									map.put(key, val)

									key := "goodbye"
									val:= "bad"
									map.put(key, val)

									get := map.get ("adfsdf")

									comment("t20: get record working with val=STRING and result = void")
									Result := false

								print(get)
								print("%N")
								end

-----------------------------------------------------------------------------------------------------------------
--tests specifically for the remove function
----------------------------------------------------------------------------------------------------------------------
		t21: BOOLEAN
			local
				map: MY_MAP[INTEGER, INTEGER]
				key: INTEGER
				val: INTEGER
			do

				create map.make
				key := 5
				val:= 1
				map.put(key, val)

				key := 2
				val:= 1
				map.put(key, val)

				key := 5
				val:= 4
				map.put(key, val)

				map.remove(key)

				comment("t21: remove record working with key=integer")
				Result := (map.has(key,val) = false)
				from map.list.start until map.list.exhausted loop
					print(map.list.item.getkey)
					print("%N")
					print(map.list.item.getvalue)
					print("%N")
					map.list.forth
				end
			end

			t22: BOOLEAN
			local
				map: MY_MAP[CHARACTER, INTEGER]
				key: CHARACTER
				val: INTEGER
			do

				create map.make
				key := 'c'
				val:= 1
				map.put(key, val)

				key := 'f'
				val:= 1
				map.put(key, val)

				key := 'c'
				val:= 4
				map.put(key, val)

				map.remove(key)

				comment("t22: remove record working with key=character")
				Result := (map.has(key,val) = false)

				from map.list.start until map.list.exhausted loop
					print(map.list.item.getkey)
					print("%N")
					print(map.list.item.getvalue)
					print("%N")
					map.list.forth
				end
			end

			t23: BOOLEAN
					local
						map: MY_MAP[STRING, INTEGER]
						key: STRING
						val: INTEGER
					do

						create map.make
						key := "hello"
						val:= 1
						map.put(key, val)

						key := "goodbye"
						val:= 1
						map.put(key, val)

						key := "hello"
						val:= 4
						map.put(key, val)

						map.remove(key)

						comment("t23: remove record working with key=STRING")
						Result := (map.has(key,val) = false)

						from map.list.start until map.list.exhausted loop
							print(map.list.item.getkey)
							print("%N")
							print(map.list.item.getvalue)
							print("%N")
							map.list.forth
						end
					end
			t24: BOOLEAN
				local
					map: MY_MAP[INTEGER, INTEGER]
					key: INTEGER
					val: INTEGER
				do

					create map.make
					key := 5
					val:= 1
					map.put(key, val)

					key := 2
					val:= 1
					map.put(key, val)

					key := 5
					val:= 4
					map.put(key, val)

					map.remove (key)

					comment("t24: remove record working with value=integer")
					Result := (map.has(key,val) = false)
					from map.list.start until map.list.exhausted loop
						print(map.list.item.getkey)
						print("%N")
						print(map.list.item.getvalue)
						print("%N")
						map.list.forth
					end
				end

			t25: BOOLEAN
				local
					map: MY_MAP[CHARACTER, CHARACTER]
					key: CHARACTER
					val: CHARACTER
				do

					create map.make
					key := 'c'
					val:= 'f'
					map.put(key, val)

					key := 'f'
					val:= 'f'
					map.put(key, val)

					key := 'c'
					val:= 'a'
					map.put(key, val)

					map.remove (key)

					comment("t25: remove record working with value=CHARACTER")
					Result := (map.has(key,val) = false)

					from map.list.start until map.list.exhausted loop
						print(map.list.item.getkey)
						print("%N")
						print(map.list.item.getvalue)
						print("%N")
						map.list.forth
					end
				end

				t26: BOOLEAN
						local
							map: MY_MAP[STRING, STRING]
							key: STRING
							val: STRING
						do

							create map.make
							key := "hello"
							val:= "good"
							map.put(key, val)

							key := "goodbye"
							val:= "good"
							map.put(key, val)

							key := "hello"
							val:= "baaadd"
							map.put(key, val)

							map.remove (key)

							comment("t26: remove record working with val=STRING")
							Result := (map.has(key,val) = false)

							from map.list.start until map.list.exhausted loop
								print(map.list.item.getkey)
								print("%N")
								print(map.list.item.getvalue)
								print("%N")
								map.list.forth
							end
						end

		t27: BOOLEAN
			local
				map: MY_MAP[INTEGER, INTEGER]
				key: INTEGER
				val: INTEGER
			do

				create map.make
				create map_test2.make
				map := map_test2

				key := 5
				val:= 1
				map.put(key, val)

				key := 2
				val:= 1
				map.put(key, val)

				key := 5
				val:= 4
				map.put(key, val)

				map.remove(8)

				comment("t27: remove record working with key dosent exist")
				Result :=(map.has1(8) = false)

				from map.list.start until map.list.exhausted loop
					print(map.list.item.getkey)
					print("%N")
					print(map.list.item.getvalue)
					print("%N")
					map.list.forth
				end

		--	ensure map_test2 = old map_test2

			end

			t28: BOOLEAN
			local
				map: MY_MAP[CHARACTER, INTEGER]
				key: CHARACTER
				val: INTEGER
			do

				create map.make
				create map_test3.make
				map := map_test3

				key := 'c'
				val:= 1
				map.put(key, val)

				key := 'f'
				val:= 1
				map.put(key, val)

				key := 'c'
				val:= 4
				map.put(key, val)

				map.remove('f')

				comment("t28: remove record working with key dosent exist")
				Result := (map.has1('f') = false)

				from map.list.start until map.list.exhausted loop
					print(map.list.item.getkey)
					print("%N")
					print(map.list.item.getvalue)
					print("%N")
					map.list.forth
				end
				--ensure map_test3 = old map_test3

			end

			t29: BOOLEAN
					local
						map: MY_MAP[STRING, INTEGER]
						key: STRING
						val: INTEGER
					do

						create map.make
						create map_test1.make
						map := map_test1

						key := "hello"
						val:= 1
						map.put(key, val)

						key := "goodbye"
						val:= 1
						map.put(key, val)

						key := "hello"
						val:= 4
						map.put(key, val)

						map.remove("hello")

						comment("t29: remove record working with key=STRING")
						Result := (map.has1("hello") = false)

						from map.list.start until map.list.exhausted loop
							print(map.list.item.getkey)
							print("%N")
							print(map.list.item.getvalue)
							print("%N")
							map.list.forth
						end

						--ensure map_test1 = old map_test1
					end
--------------------------------------------------------------------------------------------------------------
--tests specifically for key_set function
----------------------------------------------------------------------------------------------------------------

		t30: BOOLEAN
			local
				map: MY_MAP[INTEGER, INTEGER]
				key: INTEGER
				val: INTEGER
			--	get: INTEGER
				j:SET[INTEGER]
			do

				create map.make
				key := 5
				val:= 1
				map.put(key, val)

				key := 2
				val:= 3
				map.put(key, val)

				j := map.key_set

				comment("t30: key_Set record working with value=integer")
				Result := j.has(5) and j.has (2)
			end

			t31: BOOLEAN
				local
					map: MY_MAP[CHARACTER, CHARACTER]
					key: CHARACTER
					val: CHARACTER
				--	get: CHARACTER
					j:SET[CHARACTER]
				do

					create map.make
					key := 'c'
					val:= 'f'
					map.put(key, val)

					key := 'f'
					val:= 'a'
					map.put(key, val)

				    j := map.key_set

					comment("t31: key_set record working with value=CHARACTER and return /= void")
					Result := j.has ('f') AND j.has ('c')

				end

				t32: BOOLEAN
						local
							map: MY_MAP[STRING, STRING]
							key: STRING
							key2: STRING
							val: STRING
					--		get: STRING
							j:SET[STRING]
						do

							create map.make
							key := "hello"
							val:= "good"
							map.put(key, val)
							key2 := key

							key := "goodbye"
							val:= "bad"
							map.put(key, val)

							j := map.key_set

							comment("t32: key_set record working with val=STRING and result /= void")
							Result := j.has (key2) AND j.has (key)
						end

				t33: BOOLEAN
					local
						map: MY_MAP[INTEGER, INTEGER]
					--	key: INTEGER
					--	val: INTEGER
					--	get: INTEGER
						j:SET[INTEGER]
					do

						create map.make

						j := map.key_set

						comment("t33: key_set record working with key list being empty")
						Result := j.is_empty
					end
--------------------------------------------------------------------------------------------------------------
--tests specifically for value_set function
----------------------------------------------------------------------------------------------------------------

		t34: BOOLEAN
			local
				map: MY_MAP[INTEGER, INTEGER]
				key: INTEGER
				val: INTEGER
			--	get: INTEGER
				j:SET[INTEGER]
			do

				create map.make
				key := 5
				val:= 1
				map.put(key, val)

				key := 2
				val:= 3
				map.put(key, val)

				j := map.value_set

				comment("t34: value_Set record working with value=integer")
				Result := j.has(1) and j.has (3)
			end

			t35: BOOLEAN
				local
					map: MY_MAP[CHARACTER, CHARACTER]
					key: CHARACTER
					val: CHARACTER
				--	get: CHARACTER
					j:SET[CHARACTER]
				do

					create map.make
					key := 'c'
					val:= 'f'
					map.put(key, val)

					key := 'f'
					val:= 'a'
					map.put(key, val)

				    j := map.value_set

					comment("t35: value_set record working with value=CHARACTER and return /= void")
					Result := j.has ('a') AND j.has ('f')

				end

				t36: BOOLEAN
						local
							map: MY_MAP[STRING, STRING]
							key: STRING
							key2: STRING
							val: STRING
						--	get: STRING
							j:SET[STRING]
						do

							create map.make
							key := "hello"
							val:= "good"
							map.put(key, val)
							key2 := val

							key := "goodbye"
							val:= "bad"
							map.put(key, val)

							j := map.value_set

							comment("t36: value_set record working with val=STRING and result /= void")
							Result := j.has (key2) AND j.has (val)
						end

				t37: BOOLEAN
					local
						map: MY_MAP[INTEGER, INTEGER]
					--	key: INTEGER
					--	val: INTEGER
					--	get: INTEGER
						j:SET[INTEGER]
					do

						create map.make

						j := map.value_set

						comment("t37: value_set record working with key list being empty")
						Result := j.is_empty
					end

-------------------------------------------------------------------------------------------------------------
----tests specifically for exist function
---------------------------------------------------------------------------------------------------------------

--		t38: BOOLEAN
--			local
--				map: MY_MAP[INTEGER, INTEGER]
--				key: INTEGER
--				val: INTEGER
--			do

--				create map.make
--				key := 5
--				val:= 1
--				map.put(key, val)

--				key := 2
--				val:= 1
--				map.put(key, val)

--				key := 5
--				val:= 4
--				map.put(key, val)



--				comment("t38: exists record working with key=integer")
--				Result := map.exist(2, 1) and map.exist (5, 4)
--				from map.list.start until map.list.exhausted loop
--					print(map.list.item.getkey)
--					print("%N")
--					print(map.list.item.getvalue)
--					print("%N")
--					map.list.forth
--				end
--			end

--			t39: BOOLEAN
--			local
--				map: MY_MAP[CHARACTER, INTEGER]
--				key: CHARACTER
--				val: INTEGER
--			do

--				create map.make
--				key := 'c'
--				val:= 1
--				map.put(key, val)

--				key := 'f'
--				val:= 1
--				map.put(key, val)

--				key := 'c'
--				val:= 4
--				map.put(key, val)

--				comment("t39: exist record working with key=CHARACTER")
--				Result := map.exist('f', 1) and map.exist ('c', 4)

--				from map.list.start until map.list.exhausted loop
--					print(map.list.item.getkey)
--					print("%N")
--					print(map.list.item.getvalue)
--					print("%N")
--					map.list.forth
--				end
--			end

--			t40: BOOLEAN
--					local
--						map: MY_MAP[STRING, INTEGER]
--						key: STRING
--						val: INTEGER
--					do

--						create map.make
--						key := "hello"
--						val:= 1
--						map.put(key, val)

--						key := "goodbye"
--						val:= 1
--						map.put(key, val)

--						key := "hello"
--						val:= 4
--						map.put(key, val)

--						comment("t40: exist record working with key=STRING")
--						Result := map.exist("goodbye",1) and map.exist ("hello", 4)

--						from map.list.start until map.list.exhausted loop
--							print(map.list.item.getkey)
--							print("%N")
--							print(map.list.item.getvalue)
--							print("%N")
--							map.list.forth
--						end
--					end
--			t41: BOOLEAN
--				local
--					map: MY_MAP[INTEGER, INTEGER]
--					key: INTEGER
--					val: INTEGER
--				do

--					create map.make
--					key := 5
--					val:= 1
--					map.put(key, val)

--					key := 2
--					val:= 1
--					map.put(key, val)

--					key := 5
--					val:= 4
--					map.put(key, val)



--					comment("t41: exist record working with value=integer")
--					Result := map.exist(2, 1) and map.exist (5, 4)
--					from map.list.start until map.list.exhausted loop
--						print(map.list.item.getkey)
--						print("%N")
--						print(map.list.item.getvalue)
--						print("%N")
--						map.list.forth
--					end
--				end

--			t42: BOOLEAN
--				local
--					map: MY_MAP[CHARACTER, CHARACTER]
--					key: CHARACTER
--					val: CHARACTER
--				do

--					create map.make
--					key := 'c'
--					val:= 'f'
--					map.put(key, val)

--					key := 'f'
--					val:= 'f'
--					map.put(key, val)

--					key := 'c'
--					val:= 'a'
--					map.put(key, val)

--					comment("t42: exist record working with value=CHARACTER")
--					Result := map.exist('f', 'f') and map.exist ('c', 'a')

--					from map.list.start until map.list.exhausted loop
--						print(map.list.item.getkey)
--						print("%N")
--						print(map.list.item.getvalue)
--						print("%N")
--						map.list.forth
--					end
--				end

--				t43: BOOLEAN
--						local
--							map: MY_MAP[STRING, STRING]
--							key: STRING
--							val: STRING
--						do

--							create map.make
--							key := "hello"
--							val:= "good"
--							map.put(key, val)

--							key := "goodbye"
--							val:= "good"
--							map.put(key, val)

--							key := "hello"
--							val:= "baaadd"
--							map.put(key, val)

--							comment("t43: exist record working with val=STRING")
--							Result := map.exist("goodbye","good") and map.exist ("hello", "baaadd")

--							from map.list.start until map.list.exhausted loop
--								print(map.list.item.getkey)
--								print("%N")
--								print(map.list.item.getvalue)
--								print("%N")
--								map.list.forth
--							end
--						end

-------------------------------------------------------------------------------------------------------------
----tests specifically for exist1 function
---------------------------------------------------------------------------------------------------------------

--		t44: BOOLEAN
--			local
--				map: MY_MAP[INTEGER, INTEGER]
--				key: INTEGER
--				val: INTEGER
--			do

--				create map.make
--				key := 5
--				val:= 1
--				map.put(key, val)

--				key := 2
--				val:= 1
--				map.put(key, val)

--				key := 5
--				val:= 4
--				map.put(key, val)



--				comment("t44: exists1 record working with key=integer")
--				Result := map.exist1(2, 1) and map.exist1 (5, 4)
--				from map.list.start until map.list.exhausted loop
--					print(map.list.item.getkey)
--					print("%N")
--					print(map.list.item.getvalue)
--					print("%N")
--					map.list.forth
--				end
--			end

--			t45: BOOLEAN
--			local
--				map: MY_MAP[CHARACTER, INTEGER]
--				key: CHARACTER
--				val: INTEGER
--			do

--				create map.make
--				key := 'c'
--				val:= 1
--				map.put(key, val)

--				key := 'f'
--				val:= 1
--				map.put(key, val)

--				key := 'c'
--				val:= 4
--				map.put(key, val)

--				comment("t45: exist1 record working with key=CHARACTER")
--				Result := map.exist1('f', 1) and map.exist1 ('c', 4)

--				from map.list.start until map.list.exhausted loop
--					print(map.list.item.getkey)
--					print("%N")
--					print(map.list.item.getvalue)
--					print("%N")
--					map.list.forth
--				end
--			end

--			t46: BOOLEAN
--					local
--						map: MY_MAP[STRING, INTEGER]
--						key: STRING
--						val: INTEGER
--					do

--						create map.make
--						key := "hello"
--						val:= 1
--						map.put(key, val)

--						key := "goodbye"
--						val:= 1
--						map.put(key, val)

--						key := "hello"
--						val:= 4
--						map.put(key, val)

--						comment("t46: exist1 record working with key=STRING")
--						Result := map.exist1("goodbye",1) and map.exist1 ("hello", 4)

--						from map.list.start until map.list.exhausted loop
--							print(map.list.item.getkey)
--							print("%N")
--							print(map.list.item.getvalue)
--							print("%N")
--							map.list.forth
--						end
--					end
--			t47: BOOLEAN
--				local
--					map: MY_MAP[INTEGER, INTEGER]
--					key: INTEGER
--					val: INTEGER
--				do

--					create map.make
--					key := 5
--					val:= 1
--					map.put(key, val)

--					key := 2
--					val:= 1
--					map.put(key, val)

--					key := 5
--					val:= 4
--					map.put(key, val)



--					comment("t47: exist1 record working with value=integer")
--					Result := map.exist1(2, 1) and map.exist1 (5, 4)
--					from map.list.start until map.list.exhausted loop
--						print(map.list.item.getkey)
--						print("%N")
--						print(map.list.item.getvalue)
--						print("%N")
--						map.list.forth
--					end
--				end

--			t48: BOOLEAN
--				local
--					map: MY_MAP[CHARACTER, CHARACTER]
--					key: CHARACTER
--					val: CHARACTER
--				do

--					create map.make
--					key := 'c'
--					val:= 'f'
--					map.put(key, val)

--					key := 'f'
--					val:= 'f'
--					map.put(key, val)

--					key := 'c'
--					val:= 'a'
--					map.put(key, val)

--					comment("t48: exist1 record working with value=CHARACTER")
--					Result := map.exist1('f', 'f') and map.exist1 ('c', 'a')

--					from map.list.start until map.list.exhausted loop
--						print(map.list.item.getkey)
--						print("%N")
--						print(map.list.item.getvalue)
--						print("%N")
--						map.list.forth
--					end
--				end

--				t49: BOOLEAN
--						local
--							map: MY_MAP[STRING, STRING]
--							key: STRING
--							val: STRING
--						do

--							create map.make
--							key := "hello"
--							val:= "good"
--							map.put(key, val)

--							key := "goodbye"
--							val:= "good"
--							map.put(key, val)

--							key := "hello"
--							val:= "baaadd"
--							map.put(key, val)

--							comment("t49: exist1 record working with val=STRING")
--							Result := map.exist1("goodbye","good") and map.exist1 ("hello", "baaadd")

--							from map.list.start until map.list.exhausted loop
--								print(map.list.item.getkey)
--								print("%N")
--								print(map.list.item.getvalue)
--								print("%N")
--								map.list.forth
--							end
--						end

-----------------------------------------------------------------------------------------------------------
--tests specifically for has1 function
-------------------------------------------------------------------------------------------------------------

		t50: BOOLEAN
			local
				map: MY_MAP[INTEGER, INTEGER]
				key: INTEGER
				val: INTEGER
			do

				create map.make
				key := 5
				val:= 1
				map.put(key, val)

				key := 2
				val:= 1
				map.put(key, val)

				key := 5
				val:= 4
				map.put(key, val)



				comment("t50: has1 record working with key=integer")
				Result := map.has1(2) and map.has1 (5)
				from map.list.start until map.list.exhausted loop
					print(map.list.item.getkey)
					print("%N")
					print(map.list.item.getvalue)
					print("%N")
					map.list.forth
				end
			end

			t51: BOOLEAN
			local
				map: MY_MAP[CHARACTER, INTEGER]
				key: CHARACTER
				val: INTEGER
			do

				create map.make
				key := 'c'
				val:= 1
				map.put(key, val)

				key := 'f'
				val:= 1
				map.put(key, val)

				key := 'c'
				val:= 4
				map.put(key, val)

				comment("t51: has1 record working with key=CHARACTER")
				Result := map.has1('f') and map.has1 ('c')

				from map.list.start until map.list.exhausted loop
					print(map.list.item.getkey)
					print("%N")
					print(map.list.item.getvalue)
					print("%N")
					map.list.forth
				end
			end

			t52: BOOLEAN
					local
						map: MY_MAP[STRING, INTEGER]
						key: STRING
						val: INTEGER
					do

						create map.make
						key := "hello"
						val:= 1
						map.put(key, val)

						key := "goodbye"
						val:= 1
						map.put(key, val)

						key := "hello"
						val:= 4
						map.put(key, val)

						comment("t52: has1 record working with key=STRING")
						Result := map.has1("goodbye") and map.has1 ("hello")

						from map.list.start until map.list.exhausted loop
							print(map.list.item.getkey)
							print("%N")
							print(map.list.item.getvalue)
							print("%N")
							map.list.forth
						end
					end
			t53: BOOLEAN
				local
					map: MY_MAP[INTEGER, INTEGER]
					key: INTEGER
					val: INTEGER
				do

					create map.make
					key := 5
					val:= 1
					map.put(key, val)

					key := 2
					val:= 1
					map.put(key, val)

					key := 5
					val:= 4
					map.put(key, val)



					comment("t53: has1 record working with value=integer")
					Result := map.has1(2) and map.has1 (5)
					from map.list.start until map.list.exhausted loop
						print(map.list.item.getkey)
						print("%N")
						print(map.list.item.getvalue)
						print("%N")
						map.list.forth
					end
				end

			t54: BOOLEAN
				local
					map: MY_MAP[CHARACTER, CHARACTER]
					key: CHARACTER
					val: CHARACTER
				do

					create map.make
					key := 'c'
					val:= 'f'
					map.put(key, val)

					key := 'f'
					val:= 'f'
					map.put(key, val)

					key := 'c'
					val:= 'a'
					map.put(key, val)

					comment("t54: has1 record working with value=CHARACTER")
					Result := map.has1('f') and map.has1 ('c')

					from map.list.start until map.list.exhausted loop
						print(map.list.item.getkey)
						print("%N")
						print(map.list.item.getvalue)
						print("%N")
						map.list.forth
					end
				end

				t55: BOOLEAN
						local
							map: MY_MAP[STRING, STRING]
							key: STRING
							val: STRING
						do

							create map.make
							key := "hello"
							val:= "good"
							map.put(key, val)

							key := "goodbye"
							val:= "good"
							map.put(key, val)

							key := "hello"
							val:= "baaadd"
							map.put(key, val)

							comment("t55: has1 record working with val=STRING")
							Result := map.has1("goodbye") and map.has1 ("hello")

							from map.list.start until map.list.exhausted loop
								print(map.list.item.getkey)
								print("%N")
								print(map.list.item.getvalue)
								print("%N")
								map.list.forth
							end
						end

-------------------------------------------------------------------------------------------------------------
	v1
		local
			map: MY_MAP[STRING, INTEGER]
			key: STRING
			val: INTEGER
		do
			create map.make
			key:=void
			val:=1
			comment("v1: put violation")
			map.put (key, val)
		end

	v2
		local
			map: MY_MAP[STRING, INTEGER]
			key: STRING
			val: INTEGER
		do
			create map.make
			key:=void
			val:=1
			comment("v2: get violation")
			val:=map.get (key)
		end

	v3
		local
			map: MY_MAP[STRING, INTEGER]
			key: STRING
			val: INTEGER
		do
			create map.make
			key:=void
			val:=1
			comment("v3: remove violation")
			map.remove (key)
		end
		v4
			local
				map: MY_MAP[STRING, INTEGER]
				key: STRING
				val: INTEGER
			do
				create map.make
				key:="key1"
				val:=0
				comment("v4: put violation when value=0")
				map.put (key, val)
			end

			v5
				local
					map: MY_MAP[STRING, CHARACTER]
					key: STRING
					val: CHARACTER
				do
					create map.make
					key:=void
					val:=' '
					comment("v5: put violation when value=' '")
					map.put (key, val)
				end



feature {NONE}
	prepare_map
	local
		k:STRING
		v:INTEGER
		i:INTEGER
	do
		create m.make

		from
			i:=0
		until
			i>10
		loop
			v:=i
			k:="key"+i.out
			m.put (k, v)
			i:=i+1
		end
	end
end
---------------------------------------------------------------------------------------------------
--my violation tests start here
--include new violations for the put methods

