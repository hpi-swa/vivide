tests
test07Context
	"A context variable can be used to store intermediate information such as max tree depth."

	| q p |
	q := ViQueryStep transform: '[:all :ctxt |
		ctxt contents: (ctxt contents
			ifNil: [2] ifNotNil: [:v | v-1]).
		ctxt contents > 0
			ifTrue: [all collect: [:ea | ea * ea]]
			ifFalse: [#()]]'.
	p := ViQueryStep property: '[:ea | ea asString]'.
	
	q next: p.
	p next: q.
	sut firstStep: (ViQueryStep use: #(2) in: q).
	
	self
		assert: 1 equals: sut childCount;
		assert: 1 equals: (sut childAt: 1) childCount;
		assert: 0 equals: ((sut childAt: 1) childAt: 1) childCount;
		assert: 4 asString equals: ((sut childAt: 1) at: #'1_text');
		assert: 16 asString equals: (((sut childAt: 1) childAt: 1) at: #'1_text').