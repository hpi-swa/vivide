serialization
asDictionary

	super asDictionary in: [:dict |
		#(isProperty isReference) do: [:prop |
			dict at: prop put: (self perform: prop)].
		^ dict]