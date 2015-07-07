tests
test15ResultObjects

	| script |
	script := {
		[:cls | #text -> cls name].
		[:cls | cls subclasses] } asScript.
	
	sut firstStep: (ViQueryStep use: {Morph} in: script).

	self
		assert: 1 equals: sut childCount;
		assert: sut objects first = Morph.