serialization
loadFromDictionary: dict

	super loadFromDictionary: dict.

	"Set references by id only. Resolve later."
	self setDefinition: (dict at: #definition ifAbsent: [nil]).
	self setNext: (dict at: #next ifAbsent: [nil]).

	self setLabel: (dict at: #label ifAbsent: [nil]).
	self icon: (Compiler evaluate: (dict at: #iconCode ifAbsent: ['nil'])).
	
	self isProperty: (dict at: #isProperty ifAbsent: [false]).