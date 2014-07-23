serialization
asDictionary

	super asDictionary in: [:dict |
		"primitive values"
		(#(label iconCode) do: [:prop |
			dict at: prop put: (self perform: prop)]).
		"references to other steps and definitions"
		(#(definition next viewDefinition) do: [:objProp |
			dict at: objProp put: ((self perform: objProp) ifNotNil: [:obj | obj id])]).
		^ dict]