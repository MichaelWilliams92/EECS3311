note
	description: ""
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	ETF_MARRY

inherit

	ETF_MARRY_INTERFACE
		redefine
			marry
		end

create
	make

feature -- command

	marry (id1: INTEGER_64; id2: INTEGER_64; date: TUPLE [d: INTEGER_64; m: INTEGER_64; y: INTEGER_64])
		require else
			marry_precond (id1, id2, date)
		do
			if id1 < 1 or id2 < 1 then
				registry.set_message (registry.err_id_nonpositive)
			elseif registry.resident_exists (id1) = FALSE or registry.resident_exists (id2) = FALSE then
				registry.set_message (registry.err_id_unused)
			elseif id1 ~ id2 then
				registry.set_message (registry.err_id_same)
			elseif registry.tuple_valid (date) = false then
				registry.set_message (registry.err_invalid_date)
			elseif registry.resident [registry.find (id1)].married = true or registry.resident [registry.find (id2)].married = true or registry.over_18 (id1, date) = false or registry.over_18 (id2, date) = false then
				registry.set_message (registry.err_marry)
			else
					-- perform some update on the model state
				registry.marry (id1, id2, date)
			end
			etf_cmd_container.on_change.notify ([Current])
		end

end
