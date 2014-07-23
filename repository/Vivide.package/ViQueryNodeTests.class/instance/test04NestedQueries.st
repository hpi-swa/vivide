tests
test04NestedQueries
	"There are no default properties/halts for nested queries!"

	| innerQuery outerQuery |
	innerQuery := ViQueryStep collect: '[:ea | ea * ea]'.
	outerQuery := ViQueryStep reference: innerQuery.

	"The following code is the reason for introducing references."
	outerQuery next: ((ViQueryStep collect: '[:ea | ea + 1]')
		next: (ViQueryStep property: '[:ea | #text -> ea asString]')).
		
	sut firstStep: (ViQueryStep use: #(1 2 3) in: outerQuery).
	self
		assert: 3 equals: sut childCount;
		assert: (1 * 1 + 1) asString equals: ((sut childAt: 1) at: #'1_text');
		assert: (2 * 2 + 1) asString equals: ((sut childAt: 2) at: #'1_text');
		assert: (3 * 3 + 1) asString equals: ((sut childAt: 3) at: #'1_text').