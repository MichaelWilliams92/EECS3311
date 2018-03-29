note
	description: "Summary description for {CORNERS}."
	author: "Michael Williams, Mark Zhang"
	date: "$Date$"
	revision: "$Revision$"

--The CORNERS class implements the events that occur whenever a player lands on 1 of the 4 corner tiles.  The only exception to this case is with the
--Benett centre tile, that gets activated when a player passes or lands on it.  These events can eithor be benificial or detrimental to the player
class
	CORNERS

inherit
	EVENTS

	redefine make end

create
	make

feature --variables
	currency:INTEGER  --money to be gained or lsot
	decrease_turn:INTEGER --number of turns to miss


feature

make --constructor, initilize variables
	do
	name := "CORNERS"
	currency := 0
	decrease_turn := 0

	ensure then
		currency_initialized: currency = 0
		name_initialized: name.is_equal ("CORNERS")
		decrease_initialized: decrease_turn = 0

	end

feature	--add functions

--the village function runs whenever the player steps on tile # 19 of the game board.  This tile will negatively impact the player
village(p:PLAYER)
	require
		player_not_void: p /= void
	do
			print("You get mugged and lose $100.  Then you decide to call security.  Lose 2 turns waiting for them. %N")
			currency := 100
			decrease_turn := 2
			p.deduct_money(currency)
			p.set_missed_turns(decrease_turn)

		ensure
		money_decreases: p.money = old p.money - 100
		missed_turns_increases: p.missed_turns = old p.missed_turns + 2

	end

	--the benett function runs whenever the player steps on or passes tile #1.  Depending on one's luck, you might not actually recieve any money when you pass
	benett(rng_val:INTEGER; p:PLAYER)
	require
		--something wrong with this, check
		--rng_val_valid: rng_val >= 1 and rng_val <= 100
		p /= void
	do
		--if within range, recieve OSAP money
		if rng_val >= 1 and rng_val <= 69 then
				print("You landed at the Benett Centre! you collect OSAP and recieve a grant! gain $750. %N")
				currency := 750
				p.add_money(currency)

		--if within range, recieve no OSAP money
		elseif rng_val >= 70 and rng_val <= 100 then

				print("You passed the Benett Centre!  Unfortunately, your OSAP has been denied for not telling us about that $5 your mom gave you for food.  Have a nice day. %N")
		end

	ensure
		money_added: (rng_val >= 1 and rng_val <= 69) implies p.money = old p.money + 750
		money_unadded: (rng_val >= 70 and rng_val <= 100) implies p.money = old p.money
	end

	--the popeyes function runs whenever the player lands on tile #7.  You lose a very small amount of money and basically just waste a turn.
	popeyes(p:PLAYER)
	require
		p /= void
	do
		print("Your stop at popeyes for some grub. You eat like a slob, and thats why you eat alone. %N")
		currency := 10
		p.deduct_money(currency)
	ensure
		lose_money: p.money = old p.money - 10
	end

	--the parking function runs whenever the player lands on tile #13.  You finally get a parking space, but bad things come in many packages
	parking(p:PLAYER)
	require
		p /= void
	do
		print("You found a parking space! You pay $250 to keep it, But only for the week.  Now all you need is a car. %N")
		currency := 250
		p.deduct_money(currency)

	ensure
		money_lost: p.money = old p.money - 250

	end

invariant
--add invariant

end
