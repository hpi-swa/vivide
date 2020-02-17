source code
setFullSourceCodeInterval
	"Keep the interval (and so the textField) stable."
	
	self isWizardActive ifTrue: [^ self fullSourceCodeInterval: (1 to: 0)].
	
	"Try to find the currently visible code in the new text representation."
	self fullSourceCodeInterval ifNotNil: [:interval |
		| newStart code |
		code := self textField originalText. "The unmodified text." 
		"self hasUnacceptedChanges
			ifTrue: [self fullSourceCode copyFrom: interval first to: interval last]
			ifFalse: [self visibleSourceCode].
		"
		newStart := self fullSourceCode findString: code.
		newStart > 0 ifTrue: [
			self fullSourceCodeInterval: (newStart to: newStart + code size - 1).
			self selectBlockStatementsStart.
			^ self]].
		
	"Reset the interval to show all the code."
	self fullSourceCodeInterval: (1 to: self fullSourceCode size).
	self goToDeepestBlock.