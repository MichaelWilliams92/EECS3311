note
	description: "Class implementing the unit tests"
	author: "Michael Williams, Mark Zhang"
	date: ""
  	version: 1.0

class
	TESTER
inherit
	ES_TEST
create
	make
--$ISE_PRECOMP
feature
	make
	do
		add_boolean_case(agent t1)
		add_boolean_case(agent t2)
		add_boolean_case(agent t2b)
		add_boolean_case(agent t2c)
		--add_boolean_case(agent t2d)
		add_boolean_case(agent t3)
		add_boolean_case(agent t3b)
		add_boolean_case(agent t3c)
		add_boolean_case(agent t4)
		add_boolean_case(agent t5)
		add_boolean_case(agent t6)
		add_boolean_case(agent t6b)
		add_boolean_case(agent t6c)
		add_boolean_case(agent t7)
		add_boolean_case(agent t7b)
		add_boolean_case(agent t7c)
		add_boolean_case(agent t8)
		add_boolean_case(agent t8b)
		add_boolean_case(agent t9)
		add_boolean_case(agent t10)
		add_boolean_case(agent t10b)
		add_boolean_case(agent t10c)
		add_boolean_case(agent t11)
		add_boolean_case(agent t11b)
		add_boolean_case(agent t11c)
		add_boolean_case(agent t12)
	end

--make sure u cant create an instance of CAR
feature -- basic tests, for ensuring the routine works
--the following tests are for the SEDAN class--------------------------------
	t1: BOOLEAN
		local
			compact:COMPACT
		do

			create compact.make
			compact.gas

			comment("t1: test SEDAN gas")
			result := compact.gasoline = 1
		end

	t2: BOOLEAN
		local
			compact:COMPACT
		do

			create compact.make
			compact.gas
			compact.gas
			compact.accelerate

			comment("t2: test SEDAN accelerate")
			result := compact.gasoline = 1 and compact.speed = 1
		end

		t2b: BOOLEAN
		local
			compact:COMPACT
		do

			create compact.make
			compact.gas
			compact.accelerate

			comment("t2b: test SEDAN accelerate, when running out of gas")
			result := compact.gasoline = 0 and compact.speed = 0
		end

		t2c: BOOLEAN
		local
			compact:COMPACT
			i:INTEGER
		do

			create compact.make
			from i := 1
			until i = 51 --will add 50 gas
			loop
				compact.gas
				i := i + 1
			end

			from i := 1
			until i = 50  --will add 49 speed
			loop
				i := i + 1
				compact.accelerate
			end

			compact.gas
			compact.accelerate
			--now gas will be at 1 and accelerate will be at 50

			from i := 1
			until i = 50 --will add 49 gas
			loop
				compact.gas
				i := i + 1
			end

			from i := 1
			until i = 50  --will add 49 speed
			loop
				i := i + 1
				compact.accelerate
			end

			compact.gas
			compact.accelerate
			--now at speed = 100

			from i := 1
			until i = 50 --will add 49 gas
			loop
				compact.gas
				i := i + 1
			end

			from i := 1
			until i = 50  --will add 49 speed
			loop
				i := i + 1
				compact.accelerate
			end

			compact.gas
			compact.accelerate
			--now speed = 150

			from i := 1
			until i = 50 --will add 49 gas
			loop
				compact.gas
				i := i + 1
			end

			from i := 1
			until i = 50  --will add 49 speed
			loop
				i := i + 1
				compact.accelerate
			end

			compact.gas
			compact.accelerate
			--speed = 200

			compact.gas
			compact.gas
			compact.gas
			compact.accelerate
			compact.accelerate

			comment("t2c: test SEDAN accelerate when at maximum speed")
		--	comment(compact.gasoline.to_hex_string)
			result := compact.gasoline = 4 and compact.speed = 200
		end

	t3: BOOLEAN
		local
			compact:COMPACT
		do

			create compact.make
			compact.gas
			compact.gas
			compact.gas
			compact.gas
			compact.accelerate
			compact.accelerate
			compact.brake

			comment("t3: test SEDAN brake")
			result := compact.gasoline = 1 and compact.speed = 1
		end

	t3b: BOOLEAN
		local
			compact:COMPACT
		do

			create compact.make
			compact.gas
			compact.gas
			compact.gas
			compact.accelerate
			compact.accelerate
			compact.brake

			comment("t3b: test SEDAN brake when it causes gas to run out ")
			result := compact.gasoline = 0 and compact.speed = 0
		end

		t3c: BOOLEAN
			local
				compact:COMPACT
			do

				create compact.make
				compact.gas
				compact.gas
				compact.gas
				compact.accelerate
				compact.brake
				compact.brake
				compact.brake

				comment("t3c: test SEDAN brake when already at 0 speed")
				result := compact.gasoline = 1 and compact.speed = 0
			end

	t4: BOOLEAN
		local
			compact:COMPACT
			i:INTEGER
		do

			create compact.make
			from i := 1
			until i = 51 --will add 50 gas
			loop
				compact.gas
				i := i + 1
			end

			from i := 1
			until i = 50  --will add 49 speed
			loop
				i := i + 1
				compact.accelerate
			end

			compact.gas
			compact.accelerate
			--now gas will be at 1 and accelerate will be at 50

			from i := 1
			until i = 50 --will add 49 gas
			loop
				compact.gas
				i := i + 1
			end

			from i := 1
			until i = 50  --will add 49 speed
			loop
				i := i + 1
				compact.accelerate
			end

			compact.gas
			compact.accelerate
			--now at speed = 100

				compact.gas
				compact.gas
				compact.gas
				compact.gas

				compact.accelerate
				compact.accelerate
				compact.brake


			comment("t4: test SEDAN speeding, should print 3 times")
			result := compact.gasoline = 2 and compact.speed = 101
		end
--------------------------------------------------------------------------------------------

--SEDAN TESTS
	t5: BOOLEAN
		local
			sedan:SEDAN
		do

			create sedan.make
			sedan.gas

			comment("t5: test SEDAN gas")
			result := sedan.gasoline = 1
		end

		t6: BOOLEAN
			local
				sedan:SEDAN
			do

				create sedan.make
				sedan.gas
				sedan.gas
				sedan.accelerate

				comment("t6: test SEDAN accelerate")
				result := sedan.gasoline = 1 and sedan.speed = 1
			end

		t6b: BOOLEAN
		local
			sedan:SEDAN
		do

			create sedan.make
			sedan.gas
			sedan.accelerate

			comment("t6b: test SEDAN accelerate, when running out of gas")
			result := sedan.gasoline = 0 and sedan.speed = 0
		end

		t6c: BOOLEAN
		local
			sedan:SEDAN
			i:INTEGER
		do

			create sedan.make
			from i := 1
			until i = 51 --will add 50 gas
			loop
				sedan.gas
				i := i + 1
			end

			from i := 1
			until i = 50  --will add 49 speed
			loop
				i := i + 1
				sedan.accelerate
			end

			sedan.gas
			sedan.accelerate
			--now gas will be at 1 and accelerate will be at 50

			from i := 1
			until i = 50 --will add 49 gas
			loop
				sedan.gas
				i := i + 1
			end

			from i := 1
			until i = 50  --will add 49 speed
			loop
				i := i + 1
				sedan.accelerate
			end

			sedan.gas
			sedan.accelerate
			--now at speed = 100 and gas = 1

			from i := 1
			until i = 50 --will add 49 gas
			loop
				sedan.gas
				i := i + 1
			end

			from i := 1
			until i = 25  --will add 24 speed
			loop
				i := i + 1
				sedan.accelerate
			end

			sedan.gas
			sedan.gas
			sedan.accelerate
			--now speed = 125 and gas = 2

			from i := 1
			until i = 49 --will add 48 gas
			loop
				sedan.gas
				i := i + 1
			end

			from i := 1
			until i = 25  --will add 25 speed
			loop
				i := i + 1
				sedan.accelerate
			end

			sedan.gas
			sedan.gas
			sedan.accelerate
			--speed = 150 and gas = 2

			from i := 1
			until i = 49 --will add 48 gas
			loop
				sedan.gas
				i := i + 1
			end

			from i := 1
			until i = 25  --will add 24 speed
			loop
				i := i + 1
				sedan.accelerate
			end

			sedan.gas
			sedan.gas
			sedan.accelerate
			--now speed = 175 and gas = 2

			from i := 1
			until i = 48 --will add 48 gas
			loop
				sedan.gas
				i := i + 1
			end

			from i := 1
			until i = 25  --will add 25 speed
			loop
				i := i + 1
				sedan.accelerate
			end

			sedan.gas
			sedan.gas
			sedan.accelerate
			--speed = 200 and gas = 1

			sedan.gas
			sedan.gas
			sedan.gas
			--gas = 4
			sedan.accelerate
		--	sedan.accelerate

		--whats happening is even if nothing changes in the accelerate function, speeding is still run, so changes may happen

			comment("t6c: test SEDAN accelerate when at maximum speed")
		--	comment(sedan.gasoline.to_hex_string)
			result := sedan.gasoline = 3 and sedan.speed = 200
		end

	t7: BOOLEAN
		local
			sedan:SEDAN
		do

			create sedan.make
			sedan.gas
			sedan.gas
			sedan.gas
			sedan.accelerate
			sedan.brake

			comment("t7: test COMPACT brake")
			result := sedan.gasoline = 1 and sedan.speed = 0
		end

		t7b: BOOLEAN
			local
				sedan:SEDAN
			do

				create sedan.make
				sedan.gas
				sedan.gas
				sedan.gas
				sedan.accelerate
				sedan.accelerate
				sedan.brake

				comment("t7b: test SEDAN brake when it causes gas to run out ")
				result := sedan.gasoline = 0 and sedan.speed = 0
			end

			t7c: BOOLEAN
				local
					compact:COMPACT
				do

					create compact.make
					compact.gas
					compact.gas
					compact.gas
					compact.accelerate
					compact.brake
					compact.brake
					compact.brake

					comment("t7c: test SEDAN brake when already at 0 speed")
					result := compact.gasoline = 1 and compact.speed = 0
				end

	t8: BOOLEAN
		local
			sedan:SEDAN
			i:INTEGER
		do

			create sedan.make
			from i := 1
			until i = 51 --will add 50 gas
			loop
				sedan.gas
				i := i + 1
			end

			from i := 1
			until i = 50  --will add 49 speed
			loop
				i := i + 1
				sedan.accelerate
			end

			sedan.gas
			sedan.accelerate
			--now gas will be at 1 and accelerate will be at 50

			from i := 1
			until i = 50 --will add 49 gas
			loop
				sedan.gas
				i := i + 1
			end

			from i := 1
			until i = 50  --will add 49 speed
			loop
				i := i + 1
				sedan.accelerate
			end

			sedan.gas
			sedan.accelerate
			--now at speed = 100 gas = 1

				sedan.gas
				sedan.gas
				sedan.gas
				sedan.gas
				sedan.gas
				sedan.gas
				sedan.gas

				--gas = 8

				sedan.accelerate
				sedan.accelerate
				sedan.brake


			comment("t8: test SEDAN speeding, should print 3 times")
			result := sedan.gasoline = 2 and sedan.speed = 101
		end

		t8b: BOOLEAN
			local
				sedan:SEDAN
				i:INTEGER
			do

				create sedan.make
				from i := 1
				until i = 51 --will add 50 gas
				loop
					sedan.gas
					i := i + 1
				end

				from i := 1
				until i = 50  --will add 49 speed
				loop
					i := i + 1
					sedan.accelerate
				end

				sedan.gas
				sedan.accelerate
				--now gas will be at 1 and accelerate will be at 50

				from i := 1
				until i = 50 --will add 49 gas
				loop
					sedan.gas
					i := i + 1
				end

				from i := 1
				until i = 50  --will add 49 speed
				loop
					i := i + 1
					sedan.accelerate
				end

				sedan.gas
				sedan.accelerate
				--now at speed = 100

					sedan.gas
					sedan.gas
					sedan.gas
					sedan.gas
					sedan.gas

					sedan.accelerate
					sedan.accelerate
					sedan.brake


				comment("t8b: test SEDAN speeding, should make gas and speed = 0")
				result := sedan.gasoline = 0 and sedan.speed = 0
			end

------------------------------------------------------------------------------------------------
--sports car
	t9: BOOLEAN
		local
			sports:SPORTS
		do

			create sports.make
			sports.gas

			comment("t9: test SPORTS gas")
			result := sports.gasoline = 1
		end

	t10: BOOLEAN
		local
			sports:SPORTS
		do

			create sports.make
			sports.gas
			sports.gas
			sports.gas
			sports.gas
			sports.accelerate

			comment("t10: test SPORTS accelerate")
			result := sports.gasoline = 1 and sports.speed = 2
		end

		t10b: BOOLEAN
		local
			sports:SPORTS
		do

			create sports.make
			sports.gas
			sports.gas
			sports.gas
			sports.gas
			sports.gas
			sports.gas
			sports.accelerate
			sports.accelerate

			comment("t10b: test SPORTS accelerate, when running out of gas")
			result := sports.gasoline = 0 and sports.speed = 0
		end

		t10c: BOOLEAN
		local
			sports:SPORTS
			i:INTEGER
		do

			create sports.make
			from i := 1
			until i = 51 --will add 50 gas
			loop
				sports.gas
				i := i + 1
			end

			from i := 1
			until i = 17  --will add 32 speed
			loop
				i := i + 1
				sports.accelerate
			end

			sports.gas
			sports.gas
			sports.accelerate
			--now gas = 1 and speed = 34

			from i := 1
			until i = 50 --will add 49 gas
			loop
				sports.gas
				i := i + 1
			end

			from i := 1
			until i = 17  --will add 32 speed
			loop
				i := i + 1
				sports.accelerate
			end

			sports.gas
			sports.gas
			sports.accelerate
			--now at speed = 68 and gas = 1

			from i := 1
			until i = 50 --will add 49 gas
			loop
				sports.gas
				i := i + 1
			end

			from i := 1
			until i = 17  --will add 32 speed
			loop
				i := i + 1
				sports.accelerate
			end

			--speed now at 100, gas = 2

				from i := 1
				until i = 49 --will add 50 gas
				loop
					sports.gas
					i := i + 1
				end

				from i := 1
				until i = 17  --will add 32 speed
				loop
					i := i + 1
					sports.accelerate
				end

				sports.gas
				sports.gas
				sports.accelerate
				--now gas = 1 and speed = 134

				from i := 1
				until i = 50 --will add 49 gas
				loop
					sports.gas
					i := i + 1
				end

				from i := 1
				until i = 17  --will add 32 speed
				loop
					i := i + 1
					sports.accelerate
				end

				sports.gas
				sports.gas
				sports.accelerate
				--now at speed = 168 and gas = 1

				from i := 1
				until i = 50 --will add 49 gas
				loop
					sports.gas
					i := i + 1
				end

				from i := 1
				until i = 17  --will add 32 speed
				loop
					i := i + 1
					sports.accelerate
				end

				--speed now at 200, gas = 2

				from i := 1
				until i = 49 --will add 50 gas
				loop
					sports.gas
					i := i + 1
				end

				from i := 1
				until i = 17  --will add 32 speed
				loop
					i := i + 1
					sports.accelerate
				end

				sports.gas
				sports.gas
				sports.accelerate
				--now gas = 1 and speed = 134

				from i := 1
				until i = 50 --will add 49 gas
				loop
					sports.gas
					i := i + 1
				end

				from i := 1
				until i = 17  --will add 32 speed
				loop
					i := i + 1
					sports.accelerate
				end

				sports.gas
				sports.gas
				sports.accelerate
				--now at speed = 168 and gas = 1

				from i := 1
				until i = 50 --will add 49 gas
				loop
					sports.gas
					i := i + 1
				end

				from i := 1
				until i = 17  --will add 32 speed
				loop
					i := i + 1
					sports.accelerate
				end

				--speed now at 300, gas = 2

				sports.gas
				sports.gas
				sports.accelerate

				comment("t10c: test SPORTS accelerate when at maximum speed")
		--	comment(sports.gasoline.to_hex_string)
				result := sports.gasoline = 4 and sports.speed = 300
			end

	t11: BOOLEAN
		local
			sports:SPORTS
		do

			create sports.make
			sports.gas
			sports.gas
			sports.gas
			sports.gas
			sports.gas
			sports.gas
			sports.gas
			sports.gas
			sports.gas
			sports.gas
			sports.accelerate
			sports.accelerate
			sports.brake

			comment("t11: test SPORTS brake")
			result := sports.gasoline = 3 and sports.speed = 3
		end

		t11b: BOOLEAN
			local
				sports:SPORTS
			do

				create sports.make
				sports.gas
				sports.gas
				sports.gas
				sports.gas
				sports.gas
				sports.gas
				sports.gas
				sports.gas
				sports.gas
				sports.gas
				sports.accelerate
				sports.accelerate
				sports.accelerate
				sports.brake

				comment("t11b: test SPORTS brake when it causes gas to run out ")
				result := sports.gasoline = 0 and sports.speed = 0
			end

			t11c: BOOLEAN
				local
					sports:SPORTS
				do

					create sports.make
					sports.gas
					sports.gas
					sports.gas
					sports.brake
					sports.brake

					comment("t11c: test SPORTS brake when already at 0 speed")
					result := sports.gasoline = 3 and sports.speed = 0
				end

	t12: BOOLEAN
		local
			sports:SPORTS
			i:INTEGER
		do

			create sports.make
			from i := 1
			until i = 51 --will add 50 gas
			loop
				sports.gas
				i := i + 1
			end

			from i := 1
			until i = 17  --will add 32 speed
			loop
				i := i + 1
				sports.accelerate
			end

			sports.gas
			sports.gas
			sports.accelerate
			--now gas = 1 and speed = 34

			from i := 1
			until i = 50 --will add 49 gas
			loop
				sports.gas
				i := i + 1
			end

			from i := 1
			until i = 17  --will add 32 speed
			loop
				i := i + 1
				sports.accelerate
			end

			sports.gas
			sports.gas
			sports.accelerate
			--now at speed = 68 and gas = 1

			from i := 1
			until i = 50 --will add 49 gas
			loop
				sports.gas
				i := i + 1
			end

			from i := 1
			until i = 17  --will add 32 speed
			loop
				i := i + 1
				sports.accelerate
			end

			--speed now at 100, gas = 2

			sports.gas
			sports.gas
			sports.gas
			sports.gas
			sports.gas
			sports.gas
			sports.gas
			sports.gas

			sports.accelerate
			sports.accelerate
			sports.brake

			comment("t12: test SPORTS speeding")
			comment(sports.speed.to_hex_string)
			result := sports.gasoline = 3 and sports.speed = 103
		end
end
