note
	description: "Summary description for {CAR}."
	author: "Michael Williams, Mark Zhang"
	date: "$Date$"
	revision: "$Revision$"


--The CAR class is the only parent class in the class hierarchy.  All other types of cars are made as sub classes of this one.
--The CAR class is made as specified by the assignment.  However, there are additional functionalities within it to address
--ununexpected issues with the specifications, both from our own judgement, as well as advice from the professor.
--The class provides implementation for 5 functions in its most basic sense.  More refined changes are provided by subclasses
--The 5 functions provided are make, gas, accelerate, brake, and speeding.  Further descriptions are below.
--It is assumed that whenever there is no gasoline in the car, the car stops moving, ie speed = 0.
--It is also assumed that in the case above, any statements are still printed out, as per the specification

--The class is deffered so that the client cannot create an instance of this class.  It is assumed that the client only has
--control of the child classes, ie car types, not the actual CAR ADT.
deferred class
	CAR

feature -- Initialization of all variables

	gasoline:INTEGER
	speed:INTEGER
	max_gas:INTEGER
	max_speed:INTEGER

	gas_refuelled:INTEGER --gas refuelled from the gas feature

	speed_increase_acc:INTEGER --amount speed increases by in accelerate feature
	gas_lost_acc:INTEGER     --amount of gas lost in accelerate feature

	gas_lost_brake:INTEGER  --amount of gas lost in brake feature
	speed_lost_brake:INTEGER  --amount speed decreases by in brake feature

feature --routines

--The make feature initializes all declared variables to their basic values.
--It acts like a constructor
--They are set to these specific values, as these are the values used with the basic functions of the operations
make

do
gasoline := 0
speed := 0
max_gas := 50
max_speed :=200

gas_refuelled := 1

speed_increase_acc := 1
gas_lost_acc := 1

gas_lost_brake := 1
speed_lost_brake := 1

	ensure

		max_gas: max_gas > 15
end


--The gas feature increases the amount of gas in a car by the gas_refuelled attribute.  It then prints out a statement
-- There must be room for gas
--In cases when the amount in gas_refuelled cannot entirely be filled, the gas tank is simply taken to its max amount
--ex, if gas_refuelled = 5, gasoline = 48 and max_gas = 50, the function will make gasoline = 50.
	gas
		require
			gas_tank_not_full: gasoline < max_gas

		do
			gasoline := gasoline + gas_refuelled

			--ensures gas is always at most its maximum
			if gasoline > max_gas then
				gasoline := max_gas
			end

			print("Gas!%N")

	ensure
			gasoline_amount: gasoline = old gasoline + gas_refuelled or gasoline = max_gas
			gasoline_in_range: gasoline > 0 and gasoline <= max_gas
			speed_dosent_change: speed = old speed

	max_gas_dosent_change: max_gas = old max_gas
	max_speed_dosent_change: max_speed = old max_speed

	gas_needed_dosent_change3: gas_refuelled = old gas_refuelled

	gas_needed_dosent_change5: gas_lost_acc = old gas_lost_acc
	gas_needed_dosent_change6: speed_increase_acc = old speed_increase_acc

	gas_needed_dosent_change7: gas_lost_brake = old gas_lost_brake
	gas_needed_dosent_change8: speed_lost_brake = old speed_lost_brake

		end

--The accelerate feature increases the speed of the car by speed_increase_acc, while decreasing the amount of gas
--in the car by gas_lost_acc.  It then prints out a statement.
--The neccesary amount of gas must be available for the feature to work.
--While already at max speed, the accelerate feature will not increase speed or consume gasoline.
--Otherwise, the feature will increase speed until it reaches its maximum.
--ex, if speed = 199, gas = 20, gas_lost_acc = 3 and speed_increase_acc = 4 and max_speed = 200,
--the feature will make speed = 200 and gas = 17
	accelerate
		require
			speed_within_range: speed <= max_speed
			enough_gasoline: gasoline >= gas_lost_acc
		do

			--if speed /= max_speed
			if speed < max_speed then
				speed := speed + speed_increase_acc
				gasoline := gasoline - gas_lost_acc
			end

				--ensures speed is always at most its maximum
				if speed > max_speed then
					speed := max_speed
				end

			print("Faster!%N")

			--if out of gas
			if gasoline = 0 then
					speed := 0
				end

			speeding

		ensure
			speed_within_range: speed >= 0 and speed <= max_speed
			gas_within_range: gasoline >= 0 and gasoline <= max_gas
			gasoline_empty: gasoline = 0 implies speed = 0
			already_at_max_speed: old speed = max_speed implies speed = old speed
			not_at_max_speed: old speed < max_speed implies (speed = old speed + speed_increase_acc or speed = max_speed or speed = 0)

	max_gas_dosent_change: max_gas = old max_gas
	max_speed_dosent_change: max_speed = old max_speed

	gas_needed_dosent_change3: gas_refuelled = old gas_refuelled

	gas_needed_dosent_change5: gas_lost_acc = old gas_lost_acc
	gas_needed_dosent_change6: speed_increase_acc = old speed_increase_acc

	gas_needed_dosent_change7: gas_lost_brake = old gas_lost_brake
	gas_needed_dosent_change8: speed_lost_brake = old speed_lost_brake

		end

--The brake feature decreases the speed of the car by speed_lost_brake and decreases the amount of gasoline by gas_lost_brake
--enough gasoline must be available to use this feature
--When the car is not moving (ie speed = 0), neithor speed nor gasoline decreases.
--Otherwise, the feature will decrease speed until it reaches its minimum (ie 0).
--ex, if speed = 1, gas = 20, gas_lost_brake = 3 and speed_lost_brake = 4
--the feature will make speed = 0 and gas = 17

	brake
		require
			enough_gasoline: gasoline >= gas_lost_brake
			car_moving: speed >= 0

		do
			--if car is moving
			if speed > 0 then
				gasoline := gasoline - gas_lost_brake
				speed := speed - speed_lost_brake
			end

			--ensures speed is always at least 0
			if speed < 0 then
				speed := 0
			end

			--if gas runs out
			if gasoline = 0 then
				speed := 0
			end

			speeding

		ensure

			speed_within_range: speed >= 0 and speed <= max_speed
			gas_within_range: gasoline >= 0 and gasoline <= max_gas

			gas_empty: gasoline = 0 implies speed = 0
			car_not_moving: old speed = 0 implies speed = old speed
			car_still_moving: old speed > 0 implies  (speed = old speed - speed_lost_brake or speed = 0)

	max_gas_dosent_change: max_gas = old max_gas
	max_speed_dosent_change: max_speed = old max_speed

	gas_needed_dosent_change3: gas_refuelled = old gas_refuelled

	gas_needed_dosent_change5: gas_lost_acc = old gas_lost_acc
	gas_needed_dosent_change6: speed_increase_acc = old speed_increase_acc

	gas_needed_dosent_change7: gas_lost_brake = old gas_lost_brake
	gas_needed_dosent_change8: speed_lost_brake = old speed_lost_brake

		end

--The speeding function checks to see whether the car's current speed is greater than (3 * max_gas - 50).
--If so, a statement is printing out.
--This feature is called whenever speed is changed by another feature, ie in the accelerate and brake features.
	speeding
		require true

		do
			if (speed > (3 * max_gas - 50)) then
				print("Speeding!%N")
			end

			ensure
				max_gas_dosent_change: max_gas = old max_gas
				max_speed_dosent_change: max_speed = old max_speed

				gas_needed_dosent_change3: gas_refuelled = old gas_refuelled

				gas_needed_dosent_change5: gas_lost_acc = old gas_lost_acc
				gas_needed_dosent_change6: speed_increase_acc = old speed_increase_acc

				gas_needed_dosent_change7: gas_lost_brake = old gas_lost_brake
				gas_needed_dosent_change8: speed_lost_brake = old speed_lost_brake
		end

invariant
	gasoline_empty: gasoline = 0 implies speed = 0
	speed_within_range: speed >=0 and speed <= max_speed
	gasoline_within_range: gasoline >=0 and gasoline <= max_gas
	max_gas_proper_value: max_gas > 15

end

