serialization
mergeFromDictionary: dict

	super mergeFromDictionary: dict.
	
	#(isProperty isReference) do: [:prop |
		self perform: (prop, #:) asSymbol with: (dict at: prop)].    