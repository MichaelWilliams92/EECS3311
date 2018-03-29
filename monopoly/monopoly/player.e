note
	description: "Summary description for {PLAYER}."
	author: "Michael Williams, Mark Zhang"
	date: "$Date$"
	revision: "$Revision$"

--The player class creates an instance of the each player the game will host.  4 instances are always created
--The players symbolically represent eithor a human player or a computer player
--The class generally holds information neccesary for deciding on a winner at the game's end.
class
	PLAYER

create
	make

feature --variables

	name:STRING --not currently needed
	money:INTEGER
	missed_turns:INTEGER --how many turns you miss
	probation:BOOLEAN    --is the player on financial probation?
	game_over:BOOLEAN    --is the player out of the game? (ie has lost)
	human:BOOLEAN        --are you human or COM?
	current_position:INTEGER --current position on board
	courses:LINKED_LIST[PROPERTIES] --list of courses player currently owns
	count:INTEGER                 --number of courses player owns

feature --functions

	make(a:INTEGER) --constructor, initialize variables
	require
		a = 1 or a = 0

		do
			--if a = 1, player is a human
			if a = 1 then
				human := true

			--if a = 0, player is a COM
			elseif a = 0 then
				human := false
			end

			name := "default"
			money := 3000
			missed_turns := 0
			probation := false
			--game_over := false
			current_position := 1
			count := 0 --number of courses u currently have
			create courses.make

			ensure
				name_initialized: name.is_equal ("default")
				money_initialized: money = 3000
				missed_turns_initialized: missed_turns = 0
				probation_initialized: probation = false
				position_initialized:current_position = 1
				count_initialized: count = 0
		end


		--the deduct_money funtion will remove money from a player's account
		deduct_money(val:INTEGER)
		require
			val_not_negative: val >= 0
		do
			money := money - val

		ensure
			money = old money - val
		end

		--the set_name funtion will set a specific name to a player
		set_name(p:STRING)
		require
			p_not_void: p /= void
		do
			name := p
		ensure
			name_changed: name = p
		end

		--the add_money function adds money to the player's account
		add_money(val:INTEGER)
		require
			val_not_negative: val >= 0
		do
			money := money + val

		ensure
			money = old money + val
		end

		--the set_missed_turns function will record how many turns the player is to miss
		set_missed_turns(val:INTEGER)
		require
			val_not_negative: val >= 0
		do
			missed_turns := missed_turns + val
		ensure
			missed: missed_turns = old missed_turns + val
		end

		--the update_position function will set the player's new location
		update_position(pos:INTEGER)
		require
			pos_not_negative: pos >= 1
		do

		current_position := current_position + pos
			if
				current_position > 24
			then
				current_position := current_position - 24
			end


		ensure
			--try to include ensure clause
		end

		--removes a course from the player's list
		remove_course
			do
				if courses.count >= 1 then
					courses.remove
					count := count - 1
				end

			ensure
				count = old count or count = old count- 1
			end

		--return the count value
		get_count:INTEGER
			do
				result := count

			ensure
				result = count
			end

		--put player on probation
		set_probation
		do
			probation := true
		end

	--increase count of player courses
		set_count
		do
			count := count + 1
		end

	--remove probation from player
		remove_probation
		do
			probation := false
		end
end
