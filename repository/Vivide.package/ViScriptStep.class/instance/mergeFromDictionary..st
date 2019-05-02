serialization
mergeFromDictionary: dict

	super mergeFromDictionary: dict.
	
	"Overwrite contents."
	#(label iconCode) do: [:prop |
		self perform: (prop, #:) asSymbol with: (dict at: prop)].
	
	"Set references by id only."
	self setDefinition: (dict at: #definition).
	self setNext: (dict at: #next).
	
	#(isProperty) do: [:prop |
		self perform: (prop, #:) asSymbol with: (dict at: prop)]. 