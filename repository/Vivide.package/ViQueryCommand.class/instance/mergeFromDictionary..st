serialization
mergeFromDictionary: dict

	super mergeFromDictionary: dict.
		
	"Set references by id only. Resolve later."
	(dict includesKey: #definition) ifTrue: [
		self setDefinition: (dict at: #definition)].

	(dict includesKey: #label) ifTrue: [
		self setLabel: (dict at: #label)].
	(dict includesKey: #iconCode) ifTrue: [
		self icon: (Compiler evaluate: (dict at: #iconCode))].