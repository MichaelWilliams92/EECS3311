note
	description: "Summary description for {CORNERS}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CORNERS

inherit
	EVENTS

create
	make

feature

make
	do
	name := "DEFAULT"
	end

	--add functions

	run_event(position:INTEGER): INTEGER
	do
		if position = 0 then
			print("You landed on the Bennett Centre!  Collect $500 for OSAP Money and and additional grant of $250!")
			
			--money := old money + 750

		elseif position = 6 then
			--do thing for popeyes

		elseif position = 12 then
			--do thing for parking

		elseif position = 18 then
			--do thing for village

		end--end for if statements

	end


end
