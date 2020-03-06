serialization
loadFromDictionary: dict

	id := dict at: #id.
	super loadFromDictionary: dict.

	"Set references by id only. Resolve later."
	self setDefinition: (dict at: #definition ifAbsent: [nil]).

	self setLabel: (dict at: #label ifAbsent: [nil]).
	self icon: (Compiler evaluate: (dict at: #iconCode ifAbsent: ['nil'])).