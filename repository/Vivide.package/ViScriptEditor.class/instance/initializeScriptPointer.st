as yet unclassified
initializeScriptPointer
	"Find out where to start editing the script."
	
	shouldPropose == true
		ifTrue: [scriptPointer := 1 to: self script size]
		ifFalse: [
			"Breadth-first search for the last block, which is the deepest. Should work..."
			| node left block |
			node := RBParser parseExpression: self script.
			left := node children asOrderedCollection.
			block := nil.
			[left notEmpty] whileTrue: [
				left removeFirst in: [:n |
					n isBlock ifTrue: [block := n].
					left addAll: n children]].
			
			scriptPointer := block
				ifNil: [1 to: self script size]
				ifNotNil: [:b | b sourceInterval]
			].	
	
	^ scriptPointer