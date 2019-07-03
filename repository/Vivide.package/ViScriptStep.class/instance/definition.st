accessing
definition

	"Materialize referenced step identifiers lazily."
	definition isSymbol ifTrue: [definition in: [:definitionId |
		self setDefinition: (self organization definitionById: definitionId).
		definition ifNil: [Transcript showln: ('[Vivide ERROR] Could not resolve definition {1} for step {2}!' format: {definitionId. self id}) ]]].

	^ definition