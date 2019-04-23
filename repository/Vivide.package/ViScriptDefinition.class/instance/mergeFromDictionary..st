serialization
mergeFromDictionary: dict

	super mergeFromDictionary: dict.
	
	"Overwrite contents."
	#(sourceCode block) do: [:prop |
		self perform: (prop, #:) asSymbol with: (dict at: prop)].