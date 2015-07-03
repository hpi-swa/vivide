serialization
mergeFromDictionary: dict

	super mergeFromDictionary: dict.
	
	"Overwrite contents."
	#(label iconCode) do: [:prop |
		self perform: (prop, #:) asSymbol with: (dict at: prop)].
	"Set references by id only."
	#(definition next) do: [:prop |
		self perform: (prop, #:) asSymbol with: (dict at: prop)].