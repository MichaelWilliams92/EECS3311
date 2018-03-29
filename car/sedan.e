note
	description: "Summary description for {SEDAN}."
	author: "Michael Williams, Mark Zhang"
	date: "$Date$"
	revision: "$Revision$"

--The SEDAN class is a subclass of CAR. This class functions the same as the basic car class, with the exception of the speeding feature.
--More information on the feature change is available below.
class
	SEDAN
inherit
	CAR
		redefine speeding end

	create make

	feature

--The speeding function checks to see whether the car's current speed is greater than (3 * max_gas - 50).
--If so, 2 statements are printing out and gasoline is decreased by 1
--This feature is called whenever speed is changed by another feature, ie in the accelerate and brake features.
	speeding

		do
			if (speed > (3 * max_gas - 50)) then
			print("Speeding!%N")
			print("Why hurry?%N")
 			gasoline := gasoline - 1
 			end

			--ensures that gasoline is at least 0
 			if gasoline <= 0 then
 				gasoline := 0
 				speed := 0  --speed goes to 0 because there is no gasoline
 			end

 			ensure then

 				gas_changes: gasoline = old gasoline - 1 xor gasoline = old gasoline
 				speed_changes: gasoline = 0 implies speed = 0
 				speed_changes2: speed = old speed or speed = 0

		end

	invariant

	max_gas_dosent_change: max_gas = 50
	max_speed_dosent_change: max_speed = 200

	no_change1: gas_refuelled = 1

	no_change2: gas_lost_acc = 1
	no_change3: speed_increase_acc = 1

	no_change4: gas_lost_brake = 1
	no_change5: speed_lost_brake = 1
end
