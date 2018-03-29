note
	description: "Summary description for {INTERFACE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	INTERFACE


create
	make

feature

--	option:STRING
--	x:BOOLEAN


		make
		do
			print("%N")
			print("----------------------------------------------------------------------------%N")
			print("----------------------------------------------------------------------------%N")
			print("%N")
			print("             _.-''''-._%N")
			print("            / .--....-.\%N")
			print("           / /         \\          WELCOME TO YORKU MONOPOLY!%N")
			print("           ||          ||%N")
			print("           || .--.  .--||          I HOPE YOU ENJOY THIS GAME%N")
			print("           /`   @  \ @ |/          AS MUCH AS I ENJOY MY LIFE.%N")
			print("           \_      _)  |%N")
			print("            |   ,____, ;%N")
			print("            | \  `--' /%N")
			print("         _./\  '.___.;_%N")
			print("     _.-'  | `\      |\'-.%N")
			print("   .'       `\ '.   / /   '.%N")
			print("  /           |/ `\/`\|     \%N")
			print("%N")
			print("----------------------------------------------------------------------------%N")
			print("----------------------------------------------------------------------------%N")
			print("%N")
			print("HERE ARE THE THREE OPTIONS FOR YOU TO CHOOSE: %N")
			print("1). START GAME %N")
			print("2). HELP GUIDE %N")
			print("3). EXIT GAME %N")
		end

root_menu
local
	option:INTEGER
	x:BOOLEAN
	rules:RULES
	game:GAME_CONTROLLER
	players: INTEGER

	do

	--	print ("Welcome to the main menu!%N Choose your option by typing in 1, 2 or 3: %N")
	--	print("1) Play YuOpoly %N")
	--	print("2) Rules %N")
	--	print("3) Exit %N")

--	io.read_line
--	option := io.last_string
--	print(option)

		create rules.make

		from x := true
		until x = false
	loop
			io.read_integer
			option := io.lastint

			if option = 1 then
				print("How many human players? %N")
				io.read_integer
				players := io.lastint

				--make sure value is between 1 and 4
				create game.make(players)
				game.play_game

			elseif option = 2 then
				rules.help

			elseif option = 3 then
				print("exit game!")
				x := false

			else
				print("Incorrect input! Choose option 1, 2 or 3")

			end

		end --loop until player exits game

	end




-------------------------------------------------------------------------------------

	--The main menu
	menu(a:INTEGER)
	do
		if a = 1 then

		end

		if a = 2 then

		end

		if a = 3 then

		end
	end

	--Dice rolls
	dice_roll:INTEGER
	do
	--	rng_range(12)
	end

	--Board of the game
	game_board
	do

	end

----	--The rules for the game
	--help
--	do
--		print("---------------------------------------------------------------------------------------------------------------------------------------------%N")
--		print("----------------------------------------------------------------RULES------------------------------------------------------------------------%N")
--		print("---------------------------------------------------------------------------------------------------------------------------------------------%N")
--		print("1) If you roll a double, then you can roll again, however, if you roll another double, then you lose $... %N")
--		print("2) If you land on a course, then you pay the course using your tuition money to own it. %N")
--		print("3) If you land on someone's else course, then you pay their tuition. %N")
--		print("4) If you want to charge more money on other players, then you can increase the tuition you want to charge on other player once. %N")
--		print("5) If you land on CHEST (CH), then a card is given to you. %N")
--		print("6) If you land on CHANCE (C), then a card is given to you. %N")
--------		print("7) CH is a good card, C is a bad card. %N")
		--print("8) You start at GO!. %N")
--		print("9) Whenever you pass the GO! tile, then you will get tuition money. However, you have 80 percent chance of getting your money. %N")
--		print("10) When you land on the JAIL tile, nothing happens. %N")
--		print("11) If you land on FREE PARKING, then you pay $.... %N")
--		print("12) If you land on POLICE, then you lose a turn.%N")
--		print("13) If you dont have enough money to pay your tuition, you will be placed in a financial probation. If you are still in debt by%N")
--		print("    the time you land on a course, then you are kicked out. In other words, you lose.. %N")
--		print("14) You win the game if you are to own 5 courses and pass the GO! tile.%N")
--		print("---------------------------------------------------------------------------------------------------------------------------------------------%N")
--		print("-----------------------------------------------------------------END-------------------------------------------------------------------------%N")
--		print("---------------------------------------------------------------------------------------------------------------------------------------------%N")

--	end

end
