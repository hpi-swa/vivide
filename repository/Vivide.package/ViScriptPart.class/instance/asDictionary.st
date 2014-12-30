serialization
asDictionary

	super asDictionary in: [:dict |
		#(isProperty) do: [:prop |
			dict at: prop put: (self perform: prop)].
		^ dict]