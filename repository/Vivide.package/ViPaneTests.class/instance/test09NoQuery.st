as yet unclassified
test09NoQuery
	"No defaults. There should be at least one matching query."
	
	sut objects: #(1 2 3).
	self assert: (sut results hasEqualElements: sut objects).