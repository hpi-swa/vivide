serialization
mergeFromDictionary: dict
	"Updates all state of this script object with the given dict. No id update."
	
	(dict at: #properties ifAbsent: [Dictionary new])
		keysAndValuesDo: [:key :value |
			self setProperty: key toValue: value].