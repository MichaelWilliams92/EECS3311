note
	description: "Summary description for {GAME_CONTROLLER}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	GAME_CONTROLLER

create
	make
feature{NONE}

	rng_sequence:RANDOM
	players:INTEGER
--	properties:PROPERTIES
	array:ARRAY[PROPERTIES]
	p1: PLAYER
	p2: PLAYER
	p3: PLAYER
	p4: PLAYER

	property1:PROPERTIES
--	property1:PROPERTIES
--	property1:PROPERTIES
--	property1:PROPERTIES
--	property1:PROPERTIES
--	property1:PROPERTIES
--	property1:PROPERTIES
--	property1:PROPERTIES
--	property1:PROPERTIES
--	property1:PROPERTIES
--	property1:PROPERTIES
--	property1:PROPERTIES
--	property1:PROPERTIES



feature

	make(x:INTEGER)

	local
		l_time:TIME
		l_seed:INTEGER


	do
		create l_time.make_now
		l_seed := l_time.hour
		l_seed := l_seed * 60 + l_time.minute
		l_seed := l_seed * 60 + l_time.second
		l_seed := l_seed * 1000 + l_time.milli_second
		create rng_sequence.set_seed(l_seed)

		--initialize all variables
		players := x

-------------------------------------------------------------------------------------
		--create players.  Some should be COMS some should be human
		create p1.make(1)
		players := players - 1

	if players > 0 then
		create p2.make(1)
		players := players - 1
	else
		create p2.make(0)
	end

	if players > 0 then
		create p3.make(1)
		players := players - 1
	else
		create p3.make(0)
	end

	if players > 0 then
		create p4.make(1)
		players := players - 1
	else
		create p4.make(0)
	end

-------------------------------------------------------------------------------	
		--initilize game array and events

--create properties
--call properties class
--make 13 instances of properties and put them into an array of properties

--create array of properties
create property1.math1300
create array.make_filled(property1,1, 13)

--create property1.math1300
array.put(property1, 1)

create property1.envs1000
array.put(property1, 2)

--create each property and assign it to the array




--create array of properties





--then initialize each index to its appropraite event


		--initiliaze game board
		--will be printing out the board statically from the board class



	end


--------------------------------------------------------------------------------------
	rng_int:INTEGER

	do
		rng_sequence.forth
		Result := rng_sequence.item
	end

	rng_doub:DOUBLE

	do
		rng_sequence.forth
		Result := rng_sequence.double_item
	end

	rng_range(num:INTEGER):INTEGER
	require
		number_is_not_zero: num >= 0
	do
		rng_sequence.forth
		Result := rng_sequence.item \\ num

	ensure
		value_is_positive: Result >= 1 and Result <= 12
	end
------------------------------------------------------------------------------

play_game
do
	print("Start playing game")
	print(p1.name)
	print(p2.name)
	print(p3.name)
	print(p4.name)
	print("%N")

	print(array.item(1).name)
	print(array.item(2).name)

end




-------------------------------------------------------------------------------
invariant
	random_sequence_attached: rng_sequence /= void


end
