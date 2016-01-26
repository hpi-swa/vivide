as yet unclassified
normalizedKind: inputOrOutputKind
	"Allow users to provide a list of class names instead of class objects."
	
	| normalizedKind |
	
	"Normalize."
	normalizedKind := inputOrOutputKind asList.
	normalizedKind ifEmpty: [^ nil].
	
	"Lookup class names."
	normalizedKind first isString ifTrue: [
		normalizedKind := normalizedKind collect: [:className | Smalltalk classNamed: className]].
	
	"Do not store single-element arrays."
	normalizedKind size = 1 ifTrue: [normalizedKind := normalizedKind first].

	^ normalizedKind