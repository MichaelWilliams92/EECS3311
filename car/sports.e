note
	description: "Summary description for {SPORTS}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"


--The SPORTS class is a subclass of CAR. This class functions the same as the basic car class.
--More information on the feature change is available below.
class
	SPORTS
inherit
	CAR
	 	redefine make, speeding end

	create make

	feature

	--The make feature initializes all declared variables to their basic values.
--It acts like a constructor
--They are set to these specific values, as these are the values used with the basic functions of the operations
--They are changed in this redefinition because all classes of this type apply different value changes than that of
--the parent class CAR.  Setting up these changes as attributes allows a much wider variety of genericity to child classes
--while also allowing the CAR class itself to remain as strong as possible, both in terms of pre and post conditions.
--It also allows less implementation changes and less redefining needed.
--ex, defining speed_increase_acc allows us to avoid redefining the acclerate function and making the parent class CAR weaker.
	make

	do
		gasoline := 0
		speed := 0
		max_gas := 50
		max_speed := 300 --changes from 200

		gas_refuelled := 1

		speed_increase_acc := 2 --changes from 1
		gas_lost_acc := 3 --changes from 1

		gas_lost_brake := 1
		speed_lost_brake := 1

		ensure then
			gas_tank_empty: gasoline = 0
			car_not_moving: speed = 0

			max_gas: max_gas = 50
			max_speed: max_speed = 300
			gas_refuelled: gas_refuelled = 1
			speed_increase_acc: speed_increase_acc = 2
			gas_lost_acc: gas_lost_acc = 3
			gas_lost_brake: gas_lost_brake = 1
			speed_lost_brake: speed_lost_brake = 1

	end

	--The speeding feature works exactly the same as the speeding feature of the CAR class
	--The speeding feature is redefined simply to provide additional post conditions, specific to this class.
	speeding
	do
		precursor
		ensure then
			gas_doesnt_change: gasoline = old gasoline
			speed_dosent_change: speed = old speed
	end


	invariant
	max_gas_dosent_change: max_gas = 50
	max_speed_dosent_change: max_speed = 300

	gas_needed_dosent_change3: gas_refuelled = 1

	gas_needed_dosent_change5: gas_lost_acc = 3
	gas_needed_dosent_change6: speed_increase_acc = 2

	gas_needed_dosent_change7: gas_lost_brake = 1
	gas_needed_dosent_change8: speed_lost_brake = 1

end
