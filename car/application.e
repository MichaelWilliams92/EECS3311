note
	description : "APPLICATION class for setting up tester class"
 	author: "Michael Williams, Mark Zhang"
  	date: "2013 May 9"
  	version: 1.0

class
	APPLICATION inherit ES_SUITE

create
	make

feature {NONE} -- Initialization

	make
			-- Run tests
		do
			add_test (create {TESTER}.make)
			show_errors
			 show_browser
			run_espec
		end


end
