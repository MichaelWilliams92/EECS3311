note
	description: "Summary description for {BLESSED}."
	author: "Michael Williams, Mark Zhang"
	date: "$Date$"
	revision: "$Revision$"

--The BLESSED class is the child class of the CARD class. In this class, a given random value is used to decide on an event to occur to the player.
--These events occur whenever a player lands on a YORKD space.  These spaces are on tiles # 3, 9 and 15
class
	BLESSED

inherit
	CARD

	redefine  make,  draw_card end

create
	make

feature
	--functions

	make
	do
		name := "BLESSED_CARD"
		currency := 0
	    decrease_turn := 0

	end

--the draw_card function chooses a card at random and enacts the event it desribes.  These cards all generally have positive impacts.
--i is the random variable sent to the function, and p is the player the events act on.
draw_card(i:INTEGER; p:PLAYER)
	require else
		--create an integer between 1 and 10
		player_not_void: p /= void
	do
		--carry out event 1
		if i = 1 then
			print("opt out of insurance scam, i mean policy.  Recieve $250!")
			print("%N")
			currency := 250
			p.add_money (currency)

		--carry out event 2
		elseif i = 2  then
			print("Win the Booster Juice student foundation! For spending over $1000 this year on booster juice, you recieve $600!")
			print("%N")
			currency := 600
			p.add_money (currency)

		--carry out event 3
		elseif i = 3  then
			print("Get hit by a car on your walk home.  The owner pays you some hush money.  Recieve $800!")
			print("%N")
			currency := 800
			p.add_money (currency)

		--carry out event 4
		elseif i = 4 then
			print("Sue the school for emotional distress and win.  Gain $500!")
			print("%N")
			currency := 500
			p.add_money (currency)

		--carry out event 5
		elseif i = 5 then
			print("Your petition came through and was approved! Take yourself off of probation")
			print("%N")
			p.remove_probation

		--carry out event 6
		elseif i = 6 then
			print("Random grant appears in your mail.  Don't ask questions, just recieve $1000!")
			print("%N")
			currency := 1000
			p.add_money (currency)

		--carry out event 7
		elseif i = 7 then
			print("OSAP fund arrives early!  Collect $750!")
			print("%N")
			currency := 750
			p.add_money (currency)

	--carry out event 8
		elseif i = 8 then
			print("You've shown good behaviour.  Take yourself off probation")
			print("%N")
			p.remove_probation

	--carry out event 9
		elseif i = 9 then
			print("Reaprraisal grade actually makes your mark go up.  Gain $300 ")
			print("%N")
			currency := 300
			p.add_money (currency)

		--carry out event 10
		elseif i = 10 then
			print("Found a bookstore giftcard on the floor.  Enjoy your lucky day and recieve $500 ")
			print("%N")
			currency := 500
			p.add_money (currency)

		end

	end

end
