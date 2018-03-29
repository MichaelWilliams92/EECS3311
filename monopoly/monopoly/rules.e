note
	description: "Summary description for {RULES}."
	author: "Michael Williams, Mark Zhang"
	date: "$Date$"
	revision: "$Revision$"
--is this a command pattern??
--The RULES class is created simply to output the list of game rules to the user.  This is called from a class instead of a function
--because multiple classes need access to the set of Rules.
class
	RULES

create
	make

feature

	make --default contructor, does nothing in this case
	do
	end

	--help function prints out the set of rules
	help
	local
		quit:BOOLEAN --exit status

	do --may need changing
		print("%N")
		print("---------------------------------------------------------------------------------------------------------------------------%N")
		print("------------------------------------------------------RULES----------------------------------------------------------------%N")
		print("---------------------------------------------------------------------------------------------------------------------------%N")
		print("1) If you roll a double, then you can roll again, however, if you roll another double, then you lose $... %N")
		print("2) If you land on a course, then you pay the course using your tuition money to own it. %N")
		print("3) If you land on someone's else course, then you pay their tuition. %N")
		print("4) If you want to charge more money on other players, then you can increase the tuition you want to charge on other player once. %N")
		print("5) If you land on CHEST (CH), then a card is given to you. %N")
		print("6) If you land on CHANCE (C), then a card is given to you. %N")
		print("7) CH is a good card, C is a bad card. %N")
		print("8) You start at GO!. %N")
		print("9) Whenever you pass the GO! tile, then you will get tuition money. However, you have 80 percent chance of getting your money. %N")
		print("10) When you land on the JAIL tile, nothing happens. %N")
		print("11) If you land on FREE PARKING, then you pay $.... %N")
		print("12) If you land on POLICE, then you lose a turn.%N")
		print("13) If you dont have enough money to pay your tuition, you will be placed in a financial probation. If you are still in debt by%N")
		print("    the time you land on a course, then you are kicked out. In other words, you lose.. %N")
		print("14) You win the game if you are to own 5 courses and pass the GO! tile.%N")
		print("---------------------------------------------------------------------------------------------------------------------------%N")
		print("-------------------------------------------------------END-----------------------------------------------------------------%N")
		print("---------------------------------------------------------------------------------------------------------------------------%N")
		print("%N")

		print("Press 'Q' to return to main menu.  ")


		from quit := false
		until quit = true
		loop
			io.read_line
			if io.last_string.is_equal ("Q") then
				quit := true
			end

		end
	end

end
