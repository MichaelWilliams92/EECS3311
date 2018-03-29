note
	description: "Input Handler"
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	ETF_INPUT_HANDLER_INTERFACE
inherit
	ETF_TYPE_CONSTRAINTS

feature {NONE}

	make_without_running(input: STRING; a_commands: ETF_ABSTRACT_UI_INTERFACE)
			-- convert an input string into array of commands
	  	do
	  		create on_error
		  	input_string := input
		  	abstract_ui  := a_commands
	  	end

	make(input: STRING; a_commands: ETF_ABSTRACT_UI_INTERFACE)
			-- convert an input string into array of commands
	  	do
	  		make_without_running(input, a_commands)
			parse_and_validate_input_string
	  	end

feature -- auxiliary queries

	etf_evt_out (evt: TUPLE[name: STRING; args: ARRAY[ETF_EVT_ARG]]): STRING
		local
			i: INTEGER
			name: STRING
			args: ARRAY[ETF_EVT_ARG]
		do
			name := evt.name
			args := evt.args
			create Result.make_empty
			Result.append (name + "(")
			from
				i := args.lower
			until
				i > args.upper
			loop
				if args[i].src_out.is_empty then
					Result.append (args[i].out)
				else
					Result.append (args[i].src_out)
				end
				if i < args.upper then
					Result.append (", ")
				end
				i := i + 1
			end
			Result.append (")")
		end

feature -- attributes

	error: BOOLEAN

	input_string: STRING -- list of commands to execute

	abstract_ui: ETF_ABSTRACT_UI_INTERFACE
		-- output generated by `parse_string'

feature -- error reporting

	on_error: ETF_EVENT [TUPLE[STRING]]

feature -- error messages

	input_cmds_syntax_err_msg : STRING =
		"Syntax Error: specification of command executions cannot be parsed"

	input_cmds_type_err_msg : STRING =
		"Type Error: specification of command executions is not type-correct"

feature -- parsing

	parse_and_validate_input_string
	  local
		trace_parser : ETF_EVT_TRACE_PARSER
		cmd : ETF_COMMAND_INTERFACE
		invalid_cmds: STRING
	  do
		create trace_parser.make (evt_param_types_list, enum_items)
		trace_parser.parse_string (input_string)

	    if trace_parser.last_error.is_empty then
	  	  invalid_cmds := find_invalid_evt_trace (
		    	trace_parser.event_trace)
		  if invalid_cmds.is_empty then
		    across trace_parser.event_trace
		    as evt
		    loop
		      cmd := evt_to_cmd (evt.item)
		      abstract_ui.put (cmd)
		    end
		  else
		    error := TRUE
		    on_error.notify (
		  	  input_cmds_type_err_msg + "%N" + invalid_cmds)
		  end
	    else
	      error := TRUE
	      on_error.notify (
		    input_cmds_syntax_err_msg + "%N" + trace_parser.last_error)
	    end
	end

	evt_to_cmd (evt : TUPLE[name: STRING; args: ARRAY[ETF_EVT_ARG]]) : ETF_COMMAND_INTERFACE
		local
			cmd_name : STRING
			args : ARRAY[ETF_EVT_ARG]
			dummy_cmd : ETF_DUMMY
		do
			cmd_name := evt.name
			args := evt.args
			create dummy_cmd.make("dummy", [], abstract_ui)

			if cmd_name ~ "put" then 
				 if attached {ETF_INT_ARG} args[1] as id and then TRUE and then attached {ETF_STR_ARG} args[2] as name1 and then TRUE and then (attached {ETF_TUPLE_ARG} args[3] as dob) and then dob.value.count = 3 and then (attached {ETF_INT_ARG} dob.value[1] as dob_d) and then (attached {ETF_INT_ARG} dob.value[2] as dob_m) and then (attached {ETF_INT_ARG} dob.value[3] as dob_y) and then 1 <= dob_d.value and then dob_d.value <= 31 and then 1 <= dob_m.value and then dob_m.value <= 12 and then 1900 <= dob_y.value and then dob_y.value <= 3000 then 
					 create {ETF_PUT} Result.make ("put", [id.value , name1.value , [dob_d.value, dob_m.value, dob_y.value]], abstract_ui) 
				 else 
					 Result := dummy_cmd 
				 end 

			elseif cmd_name ~ "put_alien" then 
				 if attached {ETF_INT_ARG} args[1] as id and then TRUE and then attached {ETF_STR_ARG} args[2] as name1 and then TRUE and then (attached {ETF_TUPLE_ARG} args[3] as dob) and then dob.value.count = 3 and then (attached {ETF_INT_ARG} dob.value[1] as dob_d) and then (attached {ETF_INT_ARG} dob.value[2] as dob_m) and then (attached {ETF_INT_ARG} dob.value[3] as dob_y) and then 1 <= dob_d.value and then dob_d.value <= 31 and then 1 <= dob_m.value and then dob_m.value <= 12 and then 1900 <= dob_y.value and then dob_y.value <= 3000 and then attached {ETF_STR_ARG} args[4] as country and then TRUE then 
					 create {ETF_PUT_ALIEN} Result.make ("put_alien", [id.value , name1.value , [dob_d.value, dob_m.value, dob_y.value] , country.value], abstract_ui) 
				 else 
					 Result := dummy_cmd 
				 end 

			elseif cmd_name ~ "marry" then 
				 if attached {ETF_INT_ARG} args[1] as id1 and then TRUE and then attached {ETF_INT_ARG} args[2] as id2 and then TRUE and then (attached {ETF_TUPLE_ARG} args[3] as date) and then date.value.count = 3 and then (attached {ETF_INT_ARG} date.value[1] as date_d) and then (attached {ETF_INT_ARG} date.value[2] as date_m) and then (attached {ETF_INT_ARG} date.value[3] as date_y) and then 1 <= date_d.value and then date_d.value <= 31 and then 1 <= date_m.value and then date_m.value <= 12 and then 1900 <= date_y.value and then date_y.value <= 3000 then 
					 create {ETF_MARRY} Result.make ("marry", [id1.value , id2.value , [date_d.value, date_m.value, date_y.value]], abstract_ui) 
				 else 
					 Result := dummy_cmd 
				 end 

			elseif cmd_name ~ "divorce" then 
				 if attached {ETF_INT_ARG} args[1] as a_id1 and then TRUE and then attached {ETF_INT_ARG} args[2] as a_id2 and then TRUE then 
					 create {ETF_DIVORCE} Result.make ("divorce", [a_id1.value , a_id2.value], abstract_ui) 
				 else 
					 Result := dummy_cmd 
				 end 

			elseif cmd_name ~ "die" then 
				 if attached {ETF_INT_ARG} args[1] as id and then TRUE then 
					 create {ETF_DIE} Result.make ("die", [id.value], abstract_ui) 
				 else 
					 Result := dummy_cmd 
				 end 
			else 
				 Result := dummy_cmd 
			end 
		end

	find_invalid_evt_trace (
		event_trace: ARRAY[TUPLE[name: STRING; args: ARRAY[ETF_EVT_ARG]]])
	: STRING
	local
		loop_counter: INTEGER
		evt: TUPLE[name: STRING; args: ARRAY[ETF_EVT_ARG]]
		cmd_name: STRING
		args: ARRAY[ETF_EVT_ARG]
		evt_out_str: STRING
	do
		create Result.make_empty
		from
			loop_counter := event_trace.lower
		until
			loop_counter > event_trace.upper
		loop
			evt := event_trace[loop_counter]
			evt_out_str := etf_evt_out (evt)

			cmd_name := evt.name
			args := evt.args

			if cmd_name ~ "put" then 
				if NOT( ( args.count = 3 ) AND THEN attached {ETF_INT_ARG} args[1] as id and then TRUE and then attached {ETF_STR_ARG} args[2] as name1 and then TRUE and then (attached {ETF_TUPLE_ARG} args[3] as dob) and then dob.value.count = 3 and then (attached {ETF_INT_ARG} dob.value[1] as dob_d) and then (attached {ETF_INT_ARG} dob.value[2] as dob_m) and then (attached {ETF_INT_ARG} dob.value[3] as dob_y) and then 1 <= dob_d.value and then dob_d.value <= 31 and then 1 <= dob_m.value and then dob_m.value <= 12 and then 1900 <= dob_y.value and then dob_y.value <= 3000) then 
					if NOT Result.is_empty then
						Result.append ("%N")
					end
					Result.append (evt_out_str + " does not conform to declaration " +
							"put(id: ID = INTEGER_64 ; name1: NAME = STRING ; dob: DATE = TUPLE[d: DAY = 1 .. 31; m: MONTH = 1 .. 12; y: YEAR = 1900 .. 3000])")
				end

			elseif cmd_name ~ "put_alien" then 
				if NOT( ( args.count = 4 ) AND THEN attached {ETF_INT_ARG} args[1] as id and then TRUE and then attached {ETF_STR_ARG} args[2] as name1 and then TRUE and then (attached {ETF_TUPLE_ARG} args[3] as dob) and then dob.value.count = 3 and then (attached {ETF_INT_ARG} dob.value[1] as dob_d) and then (attached {ETF_INT_ARG} dob.value[2] as dob_m) and then (attached {ETF_INT_ARG} dob.value[3] as dob_y) and then 1 <= dob_d.value and then dob_d.value <= 31 and then 1 <= dob_m.value and then dob_m.value <= 12 and then 1900 <= dob_y.value and then dob_y.value <= 3000 and then attached {ETF_STR_ARG} args[4] as country and then TRUE) then 
					if NOT Result.is_empty then
						Result.append ("%N")
					end
					Result.append (evt_out_str + " does not conform to declaration " +
							"put_alien(id: ID = INTEGER_64 ; name1: NAME = STRING ; dob: DATE = TUPLE[d: DAY = 1 .. 31; m: MONTH = 1 .. 12; y: YEAR = 1900 .. 3000] ; country: COUNTRY = STRING)")
				end

			elseif cmd_name ~ "marry" then 
				if NOT( ( args.count = 3 ) AND THEN attached {ETF_INT_ARG} args[1] as id1 and then TRUE and then attached {ETF_INT_ARG} args[2] as id2 and then TRUE and then (attached {ETF_TUPLE_ARG} args[3] as date) and then date.value.count = 3 and then (attached {ETF_INT_ARG} date.value[1] as date_d) and then (attached {ETF_INT_ARG} date.value[2] as date_m) and then (attached {ETF_INT_ARG} date.value[3] as date_y) and then 1 <= date_d.value and then date_d.value <= 31 and then 1 <= date_m.value and then date_m.value <= 12 and then 1900 <= date_y.value and then date_y.value <= 3000) then 
					if NOT Result.is_empty then
						Result.append ("%N")
					end
					Result.append (evt_out_str + " does not conform to declaration " +
							"marry(id1: ID = INTEGER_64 ; id2: ID = INTEGER_64 ; date: DATE = TUPLE[d: DAY = 1 .. 31; m: MONTH = 1 .. 12; y: YEAR = 1900 .. 3000])")
				end

			elseif cmd_name ~ "divorce" then 
				if NOT( ( args.count = 2 ) AND THEN attached {ETF_INT_ARG} args[1] as a_id1 and then TRUE and then attached {ETF_INT_ARG} args[2] as a_id2 and then TRUE) then 
					if NOT Result.is_empty then
						Result.append ("%N")
					end
					Result.append (evt_out_str + " does not conform to declaration " +
							"divorce(a_id1: ID = INTEGER_64 ; a_id2: ID = INTEGER_64)")
				end

			elseif cmd_name ~ "die" then 
				if NOT( ( args.count = 1 ) AND THEN attached {ETF_INT_ARG} args[1] as id and then TRUE) then 
					if NOT Result.is_empty then
						Result.append ("%N")
					end
					Result.append (evt_out_str + " does not conform to declaration " +
							"die(id: ID = INTEGER_64)")
				end
			else
				if NOT Result.is_empty then
					Result.append ("%N")
				end
				Result.append ("Error: unknown event name " + cmd_name)
			end
			loop_counter := loop_counter + 1
		end
	end
end