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
	winner:BOOLEAN
	l:INTEGER
	--x:BOOLEAN
--	properties:PROPERTIES
	array:ARRAY[PROPERTIES]
	player_array:ARRAY[PLAYER]
	rules:RULES
	p1: PLAYER
	p2: PLAYER
	p3: PLAYER
	p4: PLAYER
	turns:INTEGER
	options:INTEGER

	property1:PROPERTIES

	yorkd_deck:YORKD
	blessed_deck:BLESSED

	corners:CORNERS



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
		--create instance of the rules
		create rules.make
-------------------------------------------------------------------------------------
		--create players.  Some should be COMS some should be human
		create p1.make(1)
		players := players - 1
		turns := 15


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

	players := 4
	--create player array

	create player_array.make_filled(p1, 1, 4)
	player_array.put(p2, 2)
	player_array.put(p3, 3)
	player_array.put(p4, 4)

-------------------------------------------------------------------------------	
		--initilize game array and events

--create properties
--call properties class
--make 13 instances of properties and put them into an array of properties

--create array of properties and fill them with the properties
create property1.math1300
create array.make_filled(property1,1, 24)

--create property1.math1300
--array.put(property1, 1)

create property1.math1300
array.put(property1, 2)

create property1.envs1000
array.put(property1, 4)

create property1.eecs1030
array.put(property1, 6)

create property1.eecs1019
array.put(property1, 8)

create property1.eecs2001
array.put(property1, 10)

create property1.phys1410
array.put(property1, 12)

create property1.dnce1000
array.put(property1, 14)

create property1.eecs2011
array.put(property1, 16)

create property1.esl1000
array.put(property1, 18)

create property1.eecs3221
array.put(property1, 20)

create property1.musc1000
array.put(property1, 22)

create property1.eecs3311
array.put(property1, 23)

create property1.chem1000
array.put(property1, 24)

--------------------------------------------------------------------------

--initialize each class in charge of card draws
create yorkd_deck.make
create blessed_deck.make

--initialize class for corner events
create corners.make

--can use the function print_board to print out the game board

--extra stuff
winner := false


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
	local
		retval:INTEGER

	do
		rng_sequence.forth
		retval := (rng_sequence.item \\ num)
		if retval = 0
		then
			retval := 1
		end

		Result := retval
	ensure
	--	value_is_positive: Result >= 1 and Result <= num + 1
	end
------------------------------------------------------------------------------

roll_dice:INTEGER
do
	Result := rng_range(6)
end

play_game
local
	i:INTEGER
	j:INTEGER
	option:INTEGER
	x:BOOLEAN
do
--	print("Start playing game!!%N")

--	from i := 1
--	until i = 25	loop
--		print(roll_dice)
--		print("%N")
--		i := i + 1
--	end

----testing that all players are created in player array
--	from i := 1
--	until i = 5	loop
--		print(player_array.item(i).name)
--		print("%N")
--		i := i + 1
--	end

--	--testing that all property array indexes are made
--	from i := 1
--	until i = 9
--	loop
--		print(array.item (i).name)
--		print("%N")
--		i := i + 1
--	end

--	--testing that board is displayed
	p1.set_name ("p1")
	p2.set_name ("p2")
	p3.set_name ("p3")
	p4.set_name ("p4")
	game_board(p1.current_position,p2.current_position,p3.current_position,p4.current_position)

--	--testing yorkd_deck
--	from i := 1
--	until i = 11
--	loop
--		 yorkd_deck.draw_card(i, player_array.item(1))
--		 i := i + 1
--	end

--	--testing blessed_deck
--	from i := 1
--	until i = 11
--	loop
--		 blessed_deck.draw_card(i, player_array.item(1))
--		  i := i + 1
--	end

--	--testing corners
--	corners.village(player_array.item(1))
--	corners.bennet(69, player_array.item(1))
--	corners.popeyes(player_array.item(1))
--	corners.parking(player_array.item(1))



	---------------------------------------------------------------------------------------------------------

	--testing done, now we start the actual playing of the game

	--until a winner is decided or only 1 player remains
	from turns := 10
	until  turns = 0
	loop

		--let all 4 players make a move
		from j := 1
		until j = 5
		loop
			-- if player_array.item (i).probation = true then
			 --	player_array.item (i).set_game_over
			 --end
			--if player hasnt been kicked out of the game, continue


			if player_array.item (j).human = true then
				print("Please choose one of these options: %N")
				print("1). Roll dice %N")
				print("2). Help %N")
				print("3). Exit %N")
				print("Enter an option: ")

					from
						x := true
					until
						x = false
					loop

						io.read_integer
						option := io.last_integer

							if option = 1 then
							print("Roll dice %N")
								move_player(j)
								x := false
							elseif option = 2 then
								print("display rules %N")
								rules.help
							elseif option = 3 then
								print("exit %N")
								--do exit
								x := false
							else
								print("TRY AGAIN %N")
							end

					end

			 --if human

		else
			 move_player(j)

			end
			j := j + 1
	end

			turns := turns - 1
			--check for winner
			--let all 4 players make a move
			--	if player_array.item (l).count >= 6 then
			--		print("Player ")
			--		print(l)
			--		print(" Won the game!!")
			--		winner := true
--
--				en


	end
		print("GOOD LORD IT FINALLY FINISHED!!%N")
		--now goes back to main menu




end

move_player(i:INTEGER)
local
	dice:INTEGER
	dice1:INTEGER
	dice2:INTEGER
	val:INTEGER
	k:INTEGER
do
	if
		player_array.item(i).game_over = true
	then
		print("GAme over for ")
		print(i)
	end

	 if player_array.item(i).game_over = false then
		dice1 := roll_dice
		dice2 := roll_dice
		dice := dice1 + dice2
		k := player_array.item(i).current_position
		player_array.item (i).update_position (dice)


		--if player lands on a blessed spot
			if player_array.item (i).current_position = 3 or player_array.item (i).current_position = 9 or player_array.item (i).current_position = 15 then
			print("You Landed on a blessed card zone!  Take a Blessed Card %N")
			val := rng_range(9)  --creates random value between 1 and 10
			blessed_deck.draw_card (val, player_array.item (i))
			game_board(p1.current_position, p2.current_position, p3.current_position, p4.current_position)

			--if player lands on a yorkd card
			elseif player_array.item (i).current_position = 5 or player_array.item (i).current_position = 11 or player_array.item (i).current_position = 17 or player_array.item (i) = 21 then
			print("You Landed on a yorkd card zone!  Take a yorkd Card %N")
			val := rng_range(9)
			yorkd_deck.draw_card (val, player_array.item (i))
			game_board(p1.current_position, p2.current_position, p3.current_position, p4.current_position)

			--if player passes the Go space
			elseif  (k + dice) / 24 = 1 then
				print("PASSED GO SPACE %N")
			corners.benett (val, player_array.item (i))
			game_board(p1.current_position, p2.current_position, p3.current_position, p4.current_position)

			--if it gets to popeyes
			elseif player_array.item (i).current_position = 7 then
				print("PASSED POPEYSE %N")
			corners.popeyes (player_array.item (i))
			game_board(p1.current_position, p2.current_position, p3.current_position, p4.current_position)

			--goes to parking space
			elseif player_array.item (i).current_position = 13 then
				print("NOT FREE PARKING %N")
			corners.parking (player_array.item (i))
			game_board(p1.current_position, p2.current_position, p3.current_position, p4.current_position)

				--goes to the village
			elseif player_array.item (i).current_position = 19 then
				print("mugged AT THE VILLAGEE %N")

			corners.village (player_array.item (i))
			game_board(p1.current_position, p2.current_position, p3.current_position, p4.current_position)


--	else

			elseif player_array.item (i).current_position = 2 or player_array.item (i).current_position = 4 or player_array.item (i).current_position = 6 or player_array.item (i).current_position = 8 or player_array.item (i).current_position = 10 or player_array.item (i).current_position = 12 or player_array.item (i).current_position = 14 or player_array.item (i).current_position = 16 or player_array.item (i).current_position = 18 or player_array.item (i).current_position = 20 or player_array.item (i).current_position = 22 or player_array.item (i).current_position = 23 or player_array.item (i).current_position = 24  then

			--if the player lands in a property
			if array.item (player_array.item (i).current_position).owned = false then --not owned by anyone
				print("landed on an unowned property %N")


				--if you have the money to buy it
				--change later for better user effectiveness
				if player_array.item (i).money >= 500 + array.item(player_array.item (i).current_position).cost then
					--buy it
				array.item (player_array.item (i).current_position).set_owner (player_array.item (i).name)
				player_array.item (i).deduct_money (array.item (player_array.item (i).current_position).cost)
				player_array.item (i).set_count
				array.item (player_array.item (i).current_position).now_owned
		--		player_array.item (i).now_owned
				print("Computer decided to buy the course %N")
				game_board(p1.current_position, p2.current_position, p3.current_position, p4.current_position)

				else
				print("Computer decided not to buy the course %N")
				game_board(p1.current_position, p2.current_position, p3.current_position, p4.current_position)
--				--do nothing
				end



--				--if you land on someones property then

		elseif not (array.item (player_array.item (i).current_position).owner.is_equal (player_array.item (i).name)) then
			print("You landed on someone elses property, or un owned property, or not owned by u")
			--takes away from ur rent but dosent put it in other lab

			if player_array.item (i).money < array.item (player_array.item (i).current_position).rent then
				print("UR ON PROBABTION BITCH %N")
--				player_array.item (i).set_probation
				else
				player_array.item (i).deduct_money (array.item (player_array.item (i).current_position).rent)
				print("PAY UP BITCH")
				end

		elseif array.item (player_array.item (i).current_position).owner.is_equal (player_array.item (i).name) then
			print("Welcome home! %N")
		end
	end

 end
end


game_board(player1:INTEGER; player2:INTEGER; player3:INTEGER; player4:INTEGER)
--	require
--		player_within_range: (p1 >= 0 and p1 <=23) and (p2 >= 0 and p2 <= 23) and (p3 >= 0 and p3 <= 23) and (p4 >= 0 and p4 <= 23)
	do
		print("%N")
		print("%N")
		print("    -------------------------------------------------------------------------    %N")
		print("    |    13    |    14   |    15   |   16    |   17    |   18    |    19    |    %N")
		print("    |          |         |         |         |         |         |          |    %N")
		print("    | PARKING  |         |    CH   |         |    C    |         |  VILLAGE |    %N")
		print("    |          |_________|         |_________|         |_________|          |    %N")
		print("    |__________|_________|_________|_________|_________|_________|__________|    %N")
		print("    |       |  |                                                 |  |       |    %N")
		print("    |       |  |                                                 |  |       |    %N")
		print("    |12     |  |                                                 |  |     20|    %N")
		print("    |       |  |                                                 |  |       |    %N")
		print("    |_______|__|                                                 |__|_______|    %N")
		print("    |          |                                                 |          |    %N")
		print("    |          |                                                 |          |    %N")
		print("    |11  C     |                                                 |     C  21|    %N")
		print("    |          |                                                 |          |    %N")
		print("    |__________|                                                 |__________|    %N")
		print("    |       |  |                                                 |  |       |    %N")
		print("    |       |  |                                                 |  |       |    %N")
		print("    |10     |  |                                                 |  |     22|    %N")
		print("    |       |  |                                                 |  |       |    %N")
		print("    |_______|__|                                                 |__|_______|    %N")
		print("    |          |                                                 |  |       |    %N")
		print("    |          |                                                 |  |       |    %N")
		print("    |9   CH    |                                                 |  |     23|    %N")
		print("    |          |                                                 |  |       |    %N")
		print("    |__________|                                                 |__|_______|    %N")
		print("    |       |  |                                                 |  |       |    %N")
		print("    |       |  |                                                 |  |       |    %N")
		print("    |8      |  |                                                 |  |     24|    %N")
		print("    |       |  |                                                 |  |       |    %N")
		print("    |_______|__|_________________________________________________|__|_______|    %N")
		print("    |          |_________|         |_________|         |_________|          |    %N")
		print("    |          |         |         |         |         |         |          |    %N")
		print("    | POPEYES  |         |    C    |         |    CH   |         |  BENNETT |    %N")
		print("    |          |         |         |         |         |         |  (START) |    %N")
		print("    |    7     |    6    |    5    |    4    |    3    |    2    |     1    |    %N")
		print("    -------------------------------------------------------------------------    %N")
		print("%N")

		print("Player 1 is currently at ")
		print(player1)
		print("  Money: $")
		print(p1.money)
		print("%N")

		print("Player 2 is currently at ")
		print(player2)
		print("  Money: $")
		print(p2.money)
		print("%N")

		print("Player 3 is currently at ")
		print(player3)
		print("  Money: $")
		print(p3.money)
		print("%N")

		print("Player 4 is currently at ")
		print(player4)
		print("  Money: $")
		print(p4.money)
		print("%N")

		print("%N")
		print("%N")
		print("----------------------------------------------------------------------------------------------------------------%N")
	end


-------------------------------------------------------------------------------
invariant
	random_sequence_attached: rng_sequence /= void


end
