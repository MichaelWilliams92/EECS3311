note
	description: "Summary description for {PROPERTIES}."
	author: "Michael Williams, Mark Zhang"
	date: "$Date$"
	revision: "$Revision$"

--The PROPERTIES class is a subclass of the events class.  In this class, the tiles that make up the individual properties are defined so that they may be purchased by players.
--They also contain some functions for information access
class
	PROPERTIES

inherit
	EVENTS

create --all the different properties
	math1300, envs1000, eecs1030, eecs1019, chem1000, eecs2001, phys1410, dnce1000, eecs2011, esl1000, eecs3221, musc1000, eecs3311

feature --global variables
	cost:INTEGER
	rent:INTEGER
	rent_increased:BOOLEAN --check if rent has been increased already
	--name:STRING
	owner:STRING --COULD ALSO BE BOOLEAN depending on how we implement it
	owned:BOOLEAN
	value:INTEGER

feature --create courses

	dnce1000
	do
		cost := 600
		rent := 400
		name := "DNCE1000"
		owner := "DEFAULT"
		rent_increased := false
		owned := false
		value := 900

	ensure
		cost = 600

	end

	esl1000
	do
		cost := 650
		rent := 300
		name := "ESL1000"
		owner := "DEFAULT"
		rent_increased := false
		value := 1000

	ensure
		cost = 650
	--	rent = 100
	end

	envs1000
	do
		cost := 650
		rent := 350
		name := "ENVS1000"
		owner := "DEFAULT"
		rent_increased := false
		value := 650

	ensure
		cost = 650
	--	rent = 100
	end

	musc1000
	do
		cost := 650
		rent := 500
		name := "MUSC1000"
		owner := "DEFAULT"
		rent_increased := false
		value := 850

	ensure
		cost = 650
	--	rent = 200
	end

	eecs1019
	do
		cost := 700
		rent := 400
		name := "EECS1019"
		owner := "DEFAULT"
		rent_increased := false
		value := 1100

	ensure
		cost = 700
	--	rent = 250
	end

	eecs2011
	do
		cost := 700
		rent := 600
		name := "EECS2011"
		owner := "DEFAULT"
		rent_increased := false
		value := 1200

	ensure
		cost = 700
	--	rent = 300
	end

	phys1410
	do
		cost := 750
		rent := 300
		name := "PHYS1000"
		owner := "DEFAULT"
		rent_increased := false
		value := 900

	ensure
		cost = 750
		--rent = 350
	end

	math1300
	do
		cost := 800
		rent := 300
		name := "MATH1300"
		owner := "DEFAULT"
		rent_increased := false
		value := 1350

	ensure
		cost = 800
	--	rent = 300
	end

	eecs3221
	do
		cost := 800
		rent := 200
		name := "EECS3221"
		owner := "DEFAULT"
		rent_increased := false
		value := 1500

	ensure
		cost = 800
	--	rent = 400
	end

	eecs1030
	do
		cost := 850
		rent := 450
		name := "EECS1030"
		owner := "DEFAULT"
		rent_increased := false
		value := 1250

	ensure
		cost = 850
	--	rent = 350
	end

	chem1000
	do
		cost := 900
		rent := 150
		name := "CHEM1000"
		owner := "DEFAULT"
		rent_increased := false
		value := 1500

	ensure
		cost = 900
	--	rent = 400
	end

	eecs2001
	do
		cost := 950
		rent := 500
		name := "EECS2001"
		owner := "DEFAULT"
		rent_increased := false
		value := 600

	ensure
		cost = 950
	--	rent = 500
	end

	eecs3311
	do
		cost := 900
		rent := 150
		name := "EECS3311"
		owner := "DEFAULT"
		rent_increased := false
		value := 900

	ensure
		cost = 900
	--	rent = 150
	end

feature --methods

--the set_owner function sets a new owner to a property
set_owner(person:STRING)
require
	person_not_void: person /= void
do
	owner := person

ensure
	owner_is_set: owner = person
end

--makes property owned
now_owned
do
	owned := true
end


invariant
	cost_is_not_negative: cost >= 0
	rent_is_not_negative: rent >= 0
	name_not_void: name /= void
end
