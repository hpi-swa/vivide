tests
test04NestedQueries
	"There are no default properties/halts for nested queries!"

	| innerQuery outerQuery |
	innerQuery := [:ea | ea * ea] asScript.
	outerQuery := innerQuery asReference.

	"The following code is the reason for introducing references."
	outerQuery next: {[:ea | ea + 1]. [:ea | #text -> ea asString]} asScript.
		
	sut firstStep: (ViQueryStep use: #(1 2 3) in: outerQuery).
	self
		assert: 3 equals: sut childCount;
		assert: (1 * 1 + 1) asString equals: ((sut childAt: 1) at: #'1_text');
		assert: (2 * 2 + 1) asString equals: ((sut childAt: 2) at: #'1_text');
		assert: (3 * 3 + 1) asString equals: ((sut childAt: 3) at: #'1_text').