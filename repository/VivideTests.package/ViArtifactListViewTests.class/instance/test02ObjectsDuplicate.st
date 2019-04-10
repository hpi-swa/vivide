as yet unclassified
test02ObjectsDuplicate
	"The list should keep track of duplicate editors for identical objects."
	
	view objects: #(2 2 3 3).
	self assert: (view objects hasEqualElements: #(2 2 3 3)).