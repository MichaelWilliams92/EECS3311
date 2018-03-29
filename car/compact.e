note
	description: "Summary description for {COMPACT}."
	author: "Michael Williams, Mark Zhang"
	date: "$Date$"
	revision: "$Revision$"

--The COMPACT class is a subclass of CAR. This class functions the same as the basic car class.
--The only exception to this is the gas feature.
--More information on the feature change is available below.
class
	COMPACT
inherit
	CAR
		redefine gas, speeding end

	create make

	feature {ANY}


	--The gas feature works exactly the same as the gas feature of the CAR class.
	--The only change to this feature is that an additional statement is printed out.
	gas

	do
		precursor  --runs parent feature
		print("Well, I have to work hard again%N")
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
	max_speed_dosent_change: max_speed = 200

	gas_needed_dosent_change3: gas_refuelled = 1

	gas_needed_dosent_change5: gas_lost_acc = 1
	gas_needed_dosent_change6: speed_increase_acc = 1

	gas_needed_dosent_change7: gas_lost_brake = 1
	gas_needed_dosent_change8: speed_lost_brake = 1

end
