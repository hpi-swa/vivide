source code
setFullSourceCodeInterval
	"Keep the interval (and so the textField) stable."
	
	self isWizardActive ifTrue: [^ self fullSourceCodeInterval: (1 to: 0)].
	
	"Try to find the currently visible code in the new text representation."
	self fullSourceCodeInterval ifNotNil: [:interval |
		| newStart |
		newStart := self fullSourceCode findString: self visibleSourceCode.
		newStart > 0 ifTrue: [
			self fullSourceCodeInterval: (newStart to: newStart + self visibleSourceCode size - 1).
			^ self]].
		
	"Reset the interval to show all the code."
	self fullSourceCodeInterval: (1 to: self fullSourceCode size).
	self goToDeepestBlock.