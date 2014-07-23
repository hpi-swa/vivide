initialization
updateClass

	| node |
	node := RBParser parseExpression: self theClassDefinition.
	
	node isMessage ifTrue: [
		self theClass: (Smalltalk at: node arguments first value)].
	node isSequence ifTrue: [
		self theClass: (Smalltalk at: node statements first arguments first value)]