note
	description: "Summary description for {EVENTS}."
	author: "Michael Williams, Mark Zhang"
	date: "$Date$"
	revision: "$Revision$"

--The EVENTS class acts as the relationship sharing connection for all the symbolic possible spaces of the gameboard.
--It may not be very defined, but its main goal is to show the relationship between the symbolic space classes of CARD
--PROPERTIES and CORNERS
deferred class
	EVENTS

feature

name:STRING --name to define and identify the objects

make
do
	name := " DEFAULT"

end

end
