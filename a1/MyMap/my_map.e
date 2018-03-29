note
  description: "Objects that represent ADT MAP:KEY x VALUE."
  author: "Przemyslaw Pawluk"
  date: "2013 May 9"
  version: 1.0
-------------------------------------------------------------------------------------------------------------------------------------------			
--This Class is designed to implement the operations associated with a map.
--These operations are put, get, remove and has.  Two other operations are implemented for client use, being key_set and value_set.
--On the supplier end, helper functions or quantifiers are also implemented, including exist, exist1, and has1.
--The operations are further described in the code below
class
	MY_MAP[K,V]

create
   make

feature  --Representation

--declaring global variables
list:LINKED_LIST[ITEM[K,V]]
count: INTEGER

feature {ANY}

	--make acts like a contructor, setting up the class's initial state when an instance is created
	make
	do
    --initializes variables
   	count:=0
   	create list.make
    ensure
        count_is_zero: count = 0
        list_is_empty: list.is_empty = true
	end

	--The put function creates a key-value pair and inserts it into the list
	--If key already exists, its value is overwritten with the one passed in the function
	put(key: K; value: V)
		require			key_not_void:   key/=void
				value_not_void: value/=void

				list_not_full:  list.full = false
		local
			item:ITEM[K,V]

		do
			create item.make (key, value)

				from list.start until list.exhausted loop

					--if key is found, remove item
					if list.item.getkey.is_equal (key) then
						list.remove
						count := count - 1
						list.finish --stop search as soon as key is found, saves time
					end
					list.forth

				end

			--add item to list
			list.put_front(item)
			count := count + 1

		ensure
			exists_in_list: exist(key, value) = true
			entry_is_unique: exist1(key, value) = true
			unique_key: has1(key) = true
			list_size_dosent_increase: count = old count implies list.count = old list.count
			list_size_does_increase: count /= old count implies list.count = old list.count + 1
			count_equals_list_count: count = list.count
		end

	--The get function returns the passed key's associated value, V.
	--If the key is not in the map, void is returned instead.  This only works if V = String
	--Because the item is not always a string, default values are returned in lieu of void when V /= String
	get(key:K):V
	require
		key_not_void: key /= void
	local

	do
		from list.start until list.exhausted loop
			if list.item.getkey.is_equal (key) then

				--if key is found, assign value to Result
				Result := list.item.getvalue
				list.finish  --stop search as soon as key is found, saves time
			end
		list.forth
		end

		ensure
			count_unchanged: (count = old count) and (list.count = old list.count)
			count_equals_list_count: count = list.count
			list_unchanged: list.is_equal (old list) = true
			void_result: (Result = void) implies (has1(key) = false)
			--Result_returned: (Result /= void) implies ( has1(key) = true and exist(key,result) = true and exist1(key,result) = true
	end

	--The remove function removes the item associated with the given key.
	--If the key does not exist, the state of the map will not change
	remove(key:K)
	require
		key /= void
	local
	do
			from list.start until list.exhausted loop

				if list.item.getkey.is_equal (key) then

					--if key is found in the list, remove it and reduce count
					list.remove
					count := count - 1
					list.finish --stop search as soon as key is found, saves time
				end

			list.forth
			end
		ensure
			key_does_not_exist:   has1(key) = false
			count_equals_list_size: count = list.count
			list_size_dosent_decrease: count = old count implies list.count = old list.count
			list_size_does_decrease: count /= old count implies list.count = old list.count - 1

	end

	--The has function determines if a specific item exists in the map
	--If so, function returns true.  Otherwise, returns false
	has(key:K; val:V):BOOLEAN
	require
		key /= void
	local
	do
		--assume false at start
		Result := false

		from list.start until list.exhausted loop

			--if key-value pair is found, result becomes true
			if list.item.getkey.is_equal (key) AND list.item.getvalue.is_equal (val)  then
				Result := true
				list.finish --once found, stop search to save time
			end
			list.forth

		end

		ensure
			check_count: count = old count and list.count = old list.count
			count_equals_list_count: count = list.count
			Result_not_void: Result/=void
			list_unchanged: old list.is_equal (list) = true
		    Result_true:  (Result = true) implies ((exist(key, val) = true and exist1(key, val) = true and has1(key) = true))
			Result_false:  (Result = false) implies ((exist(key, val) = false and exist1(key, val) = false))
	end

	-- returns a set of key values from the map
	key_set:SET[K]
	local
		k:LINKED_SET[K]
	do
		create k.make

		from list.start until list.exhausted loop

		--store each key into the set
		k.put (list.item.getkey)
		list.forth
		end

		result := k

		ensure
			check_count: count = list.count and count = old count
			count_equals_list_count: count = list.count
			list_unchanged: list.is_equal (old list) = true
			linked_set_proper_size: Result.count = list.count
			linked_set_contains_all_keys:   across list as c all
												  result.has (c.item.getkey)
											end
	end

	--Returns a set of values from the map
	--Keep in mind sets do not store duplicate values.
	value_set:SET[V]
	local
		a:LINKED_SET[V]
		b:SET[V]
	do
		create a.make

		from list.start until list.exhausted loop
		a.put_front (list.item.getvalue)
		list.forth

		end

		result := a


		ensure
			check_count: count = list.count and count = old count
			count_equals_list_count: count = list.count
			list_unchanged: list.is_equal (old list) = true
			linked_set_contains_all_keys:   across list as c all
												  result.has (c.item.getvalue)
											end
	end

feature{NONE}--Quantifiers

	--The exist function checks whether an item exists in the map
	--If so, return true.  If the item dosen't exist, return false
	exist(key:K; val:V):BOOLEAN
	require
		key_not_void: key/=void
	do
		Result := false
		from list.start until list.exhausted loop

			--if the item exists, set result to true
			if list.item.getkey.is_equal (key) AND list.item.getvalue.is_equal (val)  then
				Result := true
			end

			list.forth

		end

		ensure
			check_count: count = old count and list.count = old list.count
			count_equals_list_count: count = list.count
			Result_not_void: Result/=void
			list_unchanged: old list.is_equal (list) = true
		    Result_true:  (Result = true) implies exist1(key, val) = true and has1(key) = true
			Result_false:  (Result = false) implies exist1(key, val) = false
	end

	--checks if there is only one pair with given key/value combination
	--if so, returns true. Otherwise, false is returned
	exist1(key:K; val:V):BOOLEAN
	require
		key/=void
	local
		counter2: INTEGER
	do
	 Result := false
	 counter2 := 0
		from list.start until list.exhausted loop

			--if item is found, increase counter
			if list.item.getkey.is_equal (key) AND list.item.getvalue.is_equal (val) then --why dosent deep equal work here??
				counter2 := counter2 + 1
			end

		list.forth
		end

		if counter2 = 1 then --if only 1 of the same item was found
			Result := true
		end

		ensure
			check_count: count = old count and list.count = old list.count
			count_equals_list_count: count = list.count
			Result_not_void: Result/=void
			list_unchanged: old list.is_equal (list) = true
		    Result_true:  (Result = true) implies exist(key, val) = true and has1(key) = true
			Result_false:  (Result = false) implies exist(key, val) = false
	end

	feature --public quantifier used by client in testing

	--checks if there is only one key with given value in the entire map.
	--If so returns true, else the function returns false.
	has1(key:K):BOOLEAN
	require
		key/=void
	local
		counter: INTEGER
	do
		Result := false
		counter := 0

		from list.start until list.exhausted loop

			--if item is found, increase counter
			if list.item.getkey.is_equal (key) then
				counter := counter + 1
			end

		list.forth
		end

		if counter = 1 then
			Result := true
		end

		ensure
			check_count: count = old count and list.count = old list.count
			count_equals_list_count: count = list.count
			Result_not_void: Result/=void
			list_unchanged: old list.is_equal (list) = true
	end

invariant
	count: count>=0
	all_unique_keys:    across list as c all
						  has1(c.item.getkey) = true
						end
	all_unique_items:   across list as c all
						  exist1(c.item.getkey, c.item.getvalue) = true
						end
end
