serialization
asDictionary

	super asDictionary in: [:dict |
		"simple values"
		(#(label iconCode) do: [:prop |
			dict at: prop put: (self perform: prop)]).
		"references to other steps and definitions"
		(#(definition next) do: [:objProp |
			dict at: objProp put: ((self perform: objProp) ifNotNil: [:obj | obj id])]).
		"denoted properties for script interpretation."
		#(isProperty isReference) do: [:prop |
			dict at: prop put: (self perform: prop)].
		
		^ dict]