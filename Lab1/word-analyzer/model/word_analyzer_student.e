note
	description: "Corrected student version of WORD_ANALYZER"
	author: "Michael Williams"
	date: "$Date$"
	revision: "$Revision$"

class
	WORD_ANALYZER_STUDENT
inherit
	WORD_ANALYZER_INTERFACE

create
	make

feature -- commands

	first_repeated_character: CHARACTER
	     -- returns first repeated character or null character if none found
		 -- a character is repeated if it occurs at least twice in adjacent positions
		 -- e.g. 'l' is repeated in "hollow", but 'o' is not.
		local
			i: INTEGER
			ch: CHARACTER
			stop: BOOLEAN
		do
			from
				i := 1
				Result := '%U' -- not needed due to default initilization
			until
				i + 1 > word.count or stop --change to i + 1, so that we never compare last character to next character (which would then be out of bounds)
			loop

				ch := word[i]
				if ch = word[i+1] then
					Result := ch
					stop := true
				end
				i := i + 1
			end
		end

	first_multiple_character: CHARACTER
		-- Returns first multiply occuring character, or null if not found.
		-- A character is multiple if it occurs twice in a word,
		-- not neceassarily in adajacent positions.
		-- E.g. both 'o' and 'l' are multiple in "hollow", but 'h' is not.
	local
		i: INTEGER
		ch: CHARACTER
		stop: BOOLEAN
	do
		from
			i := 1
			Result := '%U'
		until
			i + 1 > word.count or stop
		loop
			ch := word[i]
			if find(ch,i) > 0 then
				Result := ch
				stop := true
			end
			i := i + 1
		end

	end

	count_repeated_characters: INTEGER
			-- counts groups of repeated characters.
			-- e.g., 'mississippi!!!' has 4 groups: ss, ss, pp and !!!.
			-- returns the number of such character groups
	local
			i: INTEGER
			j: INTEGER
			nr: INTEGER -- number of repetitions
		do
			from
				i := 1
				nr := 0
			until
				i + 1 > word.count
			loop
				if word[i] = word[i+1] then
				--while next n letters are the same as i and i+1, keep moving to the next i
						nr := nr + 1
				--  end

					from
						j := i + 2
					until
						j > word.count or word[j] /= word[i]
					loop
						j := j + 1
					end

					i := j - 1

				end
				i := i + 1
			end
			Result := nr
		end



feature -- utilities
	find(c: CHARACTER; position: INTEGER): INTEGER
			-- returns index of 'c' in word
			-- in range position..word.count

		--The find utility searches through word's characters, starting at position + 1 until it finds character c or reaches the end of the word.
		--if the character is found, the index of the first found instance is returned
		--if no character is found, the value 0 is returned
		--ex) in the word water, given c=w and position = 1, the value 0 is returned because w is never found from starting point position + 1 to the end of the word.
		require
			correct_position: position >= 1 and position <= word.count
			--make sure the given position is >= 1 and <= word length
			--	assert ("pos is not a valid index into the attribute word",

		local

			i: INTEGER
			stop: BOOLEAN
		do

			from
				i := position
				Result := 0 -- default
			until
				i + 1 > word.count or stop --keeps looping until it reaches the end of the word
			loop
				if c = word[i + 1] then
					Result := i + 1         --keeps checknig from i + 1, because we want to look at the bounary (position, word.count]
					stop := true
				end
				i := i + 1
			end
		ensure
			test1: Result = 0 or  (Result > position and Result <= word.count)  --ensures the result falls within range
			test2: (Result = 0) = (across (position + 1) |..| word.count as ch  all word[ch.item] /= c end) --if result == 0, character will not show up in interval
			test3: (Result /= 0) = (across (position + 1) |..| word.count as ch some word[ch.item] = c  end) --if result /= 0, character will show up in the interval
		end


end
