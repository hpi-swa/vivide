as yet unclassified
allStepsDo: aBlock
	"Skip references for now..."
	
	self flag: #todo. "mt: Find out about endless recursion..."
	self stepsDo: aBlock.