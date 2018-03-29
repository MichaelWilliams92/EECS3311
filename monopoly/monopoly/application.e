note
	description: "monopoly application root class"
	author: "Michael Williams, Mark Zhang"
	date: "$Date$"
	revision: "$Revision$"


--The APPLICATION class is essentially where the entire program begins.  It is here that the program is initially executed. Thus, its appropriate to categorize this
--as a command pattern.  Its task is very simple: To run the interface, and execute the singleton class INTERFACE.  It is also from this class that we can run tests
--for the pre and post condition checking. As a result, this class only uses make function.
class
	APPLICATION

inherit
	ARGUMENTS

create
make --constructor method

feature {NONE} -- Initialization


	make

	local
		p:INTERFACE
			-- Run application.
		do
			create p.make --create and run INTERFACE
			p.root_menu   --call method to run main game menu


		end

end
