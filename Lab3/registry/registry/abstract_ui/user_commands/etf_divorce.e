note
	description: ""
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	ETF_DIVORCE

inherit

	ETF_DIVORCE_INTERFACE
		redefine
			divorce
		end

create
	make

feature -- command

	divorce (a_id1: INTEGER_64; a_id2: INTEGER_64)
		require else
			divorce_precond (a_id1, a_id2)
		do
			if a_id1 < 1 or a_id2 < 1 then
				registry.set_message (registry.err_id_nonpositive)
			elseif registry.resident_exists (a_id1) = FALSE or registry.resident_exists (a_id2) = FALSE then
				registry.set_message (registry.err_id_unused)
			elseif a_id1 ~ a_id2 then
				registry.set_message (registry.err_id_same)
			elseif registry.resident [registry.find (a_id1)].married = false or registry.resident [registry.find (a_id2)].married = false or registry.resident [registry.find (a_id1)].spouse_id /~ a_id2 or registry.resident [registry.find (a_id2)].spouse_id /~ a_id1 then
				registry.set_message (registry.err_divorce)
			else
					-- perform some update on the model state
				registry.divorce (a_id1, a_id2)
					--	registry.default_update

			end
			etf_cmd_container.on_change.notify ([Current])
		end

end
