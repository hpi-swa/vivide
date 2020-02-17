source code
setFullSourceCodeProperties
	"Initialize the text representation for thisStep's properties. Keep the rest as is."
	
	self isWizardActive ifTrue: [^ self].
	
	self fullSourceCode: ('{1}\-> {2}' withCRs format: {self scriptSourceCode. self propertiesToString}).

	self updatePropertyBar.
	self updateReferenceBars.