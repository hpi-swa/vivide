as yet unclassified
convert: stepOrSymbol

	stepOrSymbol isSymbol
		ifFalse: [^ stepOrSymbol].
		
	"If the dynamically-scoped organization does not have it, try the on in the current profile."
	^ ((ViQueryOrganizer active stepById: stepOrSymbol)
		ifNil: [ViProfile active ifNotNil: [:profile | profile organization stepById: stepOrSymbol]])