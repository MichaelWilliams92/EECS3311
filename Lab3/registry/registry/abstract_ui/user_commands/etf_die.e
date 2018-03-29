note
	description: ""
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	ETF_DIE

inherit

	ETF_DIE_INTERFACE
		redefine
			die
		end

create
	make

feature -- command

	die (id: INTEGER_64)
		require else
			die_precond (id)
		do
			if id < 1 then
				registry.set_message (registry.err_id_nonpositive)
			elseif registry.resident_exists (id) = FALSE then
				registry.set_message (registry.err_id_unused)
			elseif registry.resident [registry.find (id)].alive = false then
				registry.set_message (registry.err_dead_already)
			else
					-- perform some update on the model state
					--registry.default_update

				registry.die (id)
			end
			etf_cmd_container.on_change.notify ([Current])
		end

end
