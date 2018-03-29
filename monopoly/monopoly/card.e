note
	description: "Summary description for {CARD}."
	author: "Michael Williams, Mark Zhang"
	date: "$Date$"
	revision: "$Revision$"

--the class CARD acts as the parent class of the 2 types of cards a player can pick up in the game.  YORKD cards and BLESSED cards.
--functions and variables common to both classes are created here, to reduce implementation in child classes and show inheritance relationships.
--An instance of this class CANNOT be created
deferred class
	CARD

inherit
	EVENTS

	redefine make end

feature --variables
		currency:INTEGER
	    decrease_turn:INTEGER

feature
	make  --constructor, intialize variables
	do
		name := "DEFAULT"
		currency := 0
		decrease_turn := 0
	ensure then
		currency_initialized: currency = 0
		decrease_initialized: decrease_turn = 0
	end

--draw card function will draw a card and carry out the event described on it
draw_card(i:INTEGER; p:PLAYER)
deferred

end


end
