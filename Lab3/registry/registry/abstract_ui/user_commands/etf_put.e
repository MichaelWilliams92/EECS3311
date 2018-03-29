note
	description: ""
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	ETF_PUT

inherit

	ETF_PUT_INTERFACE
		redefine
			put
		end

create
	make

feature -- command

	put (id: INTEGER_64; name1: STRING; dob: TUPLE [d: INTEGER_64; m: INTEGER_64; y: INTEGER_64])
		require else
			put_precond (id, name1, dob) -- precondition method
		do
			if id < 1 then
				registry.set_message (registry.err_id_nonpositive)
			elseif registry.resident_exists (id) then
				registry.set_message (registry.err_id_taken)
			elseif name1.is_empty or name1 [1].is_alpha = false then
				registry.set_message (registry.err_name_start)
			elseif registry.tuple_valid (dob) = false then
				registry.set_message (registry.err_invalid_date)
			else
					-- perform some update on the model state
				registry.put (id, name1, dob)
			end
			etf_cmd_container.on_change.notify ([Current])
		end

end
