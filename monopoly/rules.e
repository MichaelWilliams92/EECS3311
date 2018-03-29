note
	description: "Summary description for {RULES}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	RULES

create
	make

feature

	make
	do

	end

	help
	local
		quit:BOOLEAN

	do
		print("---------------------------------------------------------------------------------------------------------------------------------------------%N")
		print("----------------------------------------------------------------RULES------------------------------------------------------------------------%N")
		print("---------------------------------------------------------------------------------------------------------------------------------------------%N")
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
		print("---------------------------------------------------------------------------------------------------------------------------------------------%N")
		print("-----------------------------------------------------------------END-------------------------------------------------------------------------%N")
		print("---------------------------------------------------------------------------------------------------------------------------------------------%N")

		print("Press 'Q' to return to main menu")

	from quit := false
	until quit = true
	loop
		io.read_line
		if io.last_string.is_equal ("Q") then
			print("Going back to main menu")
			quit := true
		end

	end
	end

end
