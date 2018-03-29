note
	description: "Summary description for {PLAYER}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	PLAYER

create
	make

feature

--variables
	name:STRING --not currently needed
	money:INTEGER
	--properties (array of type properties)
	missed_turns:INTEGER --how many turns you miss
	probation:BOOLEAN    --if ur on probation
	game_over:BOOLEAN    --if ur out the game
	human:BOOLEAN        --are you human??
	current_position:INTEGER

feature

	make(a:INTEGER)
		do
			if a = 1 then
				human := true
			elseif a = 0 then
				human := false
			end

			name := "P1"

			money := 3000
			missed_turns := 0
			probation := false
			game_over := false
			current_position := 0
		end

end
