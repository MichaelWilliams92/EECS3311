note
	description: "Summary description for {INTERFACE}."
	author: "Michael Williams"
	date: "$Date$"
	revision: "$Revision$"

--The interface class is in charge of the main startup menu.  In it, the first connection to the view model is established, where users will be able to interact with the standard I/O
--to briefly navigate.  The choices are simple.  Eithor view the set of rules, exit the program itself, or set up to play the game.  The class is created so that even after navigating through
--the interactions supported by othe classes, the user always returns here to the same opening screen upon exit.
class
	INTERFACE


create
	make

feature
		--contructor, initializes object
		make
			do
			--prints main menu on class creation
			main_menu
			end

		--creates and displays interactive startup menu
		root_menu
			local
				option:INTEGER --user input
				exit:BOOLEAN --terminates display on exit
				rules:RULES --rules of the game
				game:GAME_CONTROLLER
				players: INTEGER

				do
					create rules.make  --will create class containing rules

					from exit := false
					until exit = true
					loop
						--read integer choice from user
						io.read_integer
						option := io.lastint

						--player chooses to play game
						if option = 1 then
							print("How many human players? %N")
							io.read_integer
							players := io.lastint

							--check if requested number of players is out of range
							if players < 1 or players > 4 then
								main_menu
								print("Invalid number of players.  Select a number from 1 to 4")
							else
								--if requested amount is in range, run the game
								create game.make(players)
								game.play_game

								--return to main menu on exit
								main_menu

							end

						--player chooses to see rules
						elseif option = 2 then
							rules.help

							--return to main menu on exit
							main_menu

						--quit game entirely
						elseif option = 3 then
							exit := true

						--given wrong input
						else
							main_menu
							print("Incorrect input! Choose option 1, 2 or 3. %N")

						end

					end --loop until player exits game

			end--end of function

	main_menu
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
			print("%N")
	end


end
