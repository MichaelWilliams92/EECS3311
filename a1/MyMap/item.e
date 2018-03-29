note
	description: "Summary description for {ITEM}."
	author: "PPawluk"
	date: "2013 May 9"
	revision: "1.0"

class
	ITEM[K,V]

create
	make

feature {NONE} -- Initialization

	key:K

	value:V

	make(k:K; v:V)
			-- Initialization for `Current'.
			require
				k/=void
		do
			key:=k
			value:=v
			ensure k=key AND value=v
		end



feature -- Access

	getKey:K
		do
			Result:= key
		end

	getValue:V
		do
			Result:=value
		end

feature {NONE} -- Implementation

invariant
	invariant_clause: key/=void -- Your invariant here

end
