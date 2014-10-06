as yet unclassified
initializeScriptPointer
	"Find out where to start editing the script."
	
	shouldPropose == true
		ifTrue: [scriptPointer := 1 to: self script size]
		ifFalse: [
			"| node |
			node := RBParser parseExpression: self script.
			"
			
			self flag: #todo.
			"REMOVE"
			scriptPointer := 1 to: self script size
			].	
	
	^ scriptPointer