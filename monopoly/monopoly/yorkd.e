note
	description: "Summary description for {YORKD}."
	author: "Michael Williams, Mark Zhang"
	date: "$Date$"
	revision: "$Revision$"

--The YORKD class is the child class of the CARD class. In this class, a given random value is used to decide on an event to occur to the player.
--These events occur whenever a player lands on a YORKD space.  These spaces are on tiles # 5, 11, 17, and 21
class
	YORKD

inherit
	CARD

	redefine  make,  draw_card end

create
	make

feature
	--functions

	make --constructor
	do
		name := "YORK'D_CARD"
		currency := 0
	    decrease_turn := 0

	end

--the draw_card function chooses a card at random and enacts the event it desribes.  These cards all generally have negative impacts.
--i is the random variable sent to the function, and p is the player the events act on.
draw_card(i:INTEGER; p:PLAYER)

	require else
		--create an integer between 1 and 10
		player_not_void: p /= void
	do
		--carry out event 1
		if i = 1 then
			print("York goes on strike! Miss your next turn as you contemplate why u go to this school")
			print("%N")
			decrease_turn := 1
			p.set_missed_turns (decrease_turn)

		--carry out event 2
		elseif i = 2  then
			print("Flunk your 90 Percent final exam.  Lose a course if you own 1.")
			print("%N")
			p.remove_course

		--carry out event 3
		elseif i = 3  then
			print("Tutions increases.  What a shock! Pay $150 for every course you currently own. ")
			print("%N")
			currency := p.get_count * 150
			p.deduct_money(currency)

		--carry out event 4
		elseif i = 4 then
			print("Security stops you because you match a bulletin description: Person wearing a black hoodie and possibly pants. %N")
			print("Miss a turn while you clear up any confusion")
			print("%N")
			decrease_turn := 1
			p.set_missed_turns (decrease_turn)

		--carry out event 5
		elseif i = 5 then
			print("Program requirements changed (But only for you!).  1 of your courses has been invalidated.  Lose 1 course.")
			print("%N")
			p.remove_course

		--carry out event 6
		elseif i = 6 then
			print("Dean decides we need another engineering building.  Pay your share of $400")
			print("%N")
		    currency := 400
			p.deduct_money (currency)

		--carry out event 7
		elseif i = 7 then
			print("Professor can't speak english.  Pay for a translator.  Lose $500")
			print("%N")
			currency := 500
			p.deduct_money (currency)

		--carry out event 8
		elseif i = 8 then
			print("York lost your deposit.  Pay it again. Lost $300")
			print("%N")
			currency := 300
			p.deduct_money (currency)

		--carry out event 9
		elseif i = 9 then
			print("Dean needs a new pool. lose $200 ")
			print("%N")
			currency := 200
			p.deduct_money (currency)

		--carry out event 10
		elseif i = 10 then
			print("York discovered you are an international student.  Pay $300 in extra course fees ")
			print("%N")
			currency := 300
			p.deduct_money (currency)

		end

	end

end
