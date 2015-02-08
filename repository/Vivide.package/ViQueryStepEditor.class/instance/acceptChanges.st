memento - data
acceptChanges

	"Type"
	self acceptType.

	"Meta-data."
	self acceptIcon.
	self acceptLabel.
	
	"View definition."
	self acceptView.
	
	"Step definition."
	self acceptSourceCode.
	self acceptReference.
	
	self assert: self hasUnacceptedChanges not.

	self updateSummaryLbl.
	
	ViAnimatedImageMorph
		flyOutOn: self
		with: UiFugueIcons tickIcon.