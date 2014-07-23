serialization
mergeFromDictionary: dict

	super mergeFromDictionary: dict.
	
	"Overwrite contents."
	#(mapType) do: [:prop |
		self perform: (prop, #:) asSymbol with: (dict at: prop)].
	#(inputKind outputKind) do: [:objProp |
		self perform: (objProp, #:) asSymbol with: (dict at: objProp)].
	"Set references by id only."
	#(updateSetDefinition updateClearDefinition) do: [:prop |
		self perform: (prop, #:) asSymbol with: (dict at: prop)].