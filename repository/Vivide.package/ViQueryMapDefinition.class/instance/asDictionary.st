serialization
asDictionary

	super asDictionary in: [:dict |
		"primitive values"
		(#(mapType) do: [:prop |
			dict at: prop put: (self perform: prop)]).
		"references to classes"
		(#(inputKind outputKind) do: [:objProp |
			dict at: objProp put: (self perform: objProp)]).
		"references to other steps and definitions"
		(#(updateSetDefinition updateClearDefinition) do: [:objProp |
			dict at: objProp put: ((self perform: objProp) ifNotNil: [:obj | obj id])]).
		^ dict]