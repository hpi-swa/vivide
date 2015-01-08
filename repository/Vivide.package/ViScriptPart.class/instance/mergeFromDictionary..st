serialization
mergeFromDictionary: dict

	super mergeFromDictionary: dict.
	
	#(isProperty) do: [:prop |
		self perform: (prop, #:) asSymbol with: (dict at: prop)].    