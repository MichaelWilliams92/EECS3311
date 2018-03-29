note
	description: "monopoly application root class"
	date: "$Date$"
	revision: "$Revision$"

class
	APPLICATION

inherit
	ARGUMENTS

create
make

feature {NONE} -- Initialization


	make

	local
		p:INTERFACE
			-- Run application.
		do
			create p.make
			p.root_menu


		end

end
