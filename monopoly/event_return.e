note
	description: "Summary description for {EVENT_RETURN}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	EVENT_RETURN

create
	make

feature

	money:INTEGER
	miss_turn:INTEGER

	make
	do
		money := 0
		miss_turn := 0
	end

feature --functions

	set_money(a:INTEGER)
	do
		money := a
	end

	set_miss_turn(b:INTEGER)
	do
		miss_turn := b
	end

end
