initialization
initializeScriptPointer
	"Find out where to start editing the script."
	
	shouldPropose == true
		ifTrue: [scriptPointer := 1 to: self script size]
		ifFalse: [
			scriptPointer := (ViScriptEditor detectDeepestBlockNode:
				(RBParser parseExpression: self script))  
					ifNil: [1 to: self script size]
					ifNotNil: [:b | b sourceInterval]
			].	
	
	^ scriptPointer