tests
test15ResultObjects

	| script |
	script := {
		[:cls | #text -> cls name].
		[:cls | cls subclasses] } asScript.
	
	sut
		inputForChildren: {Morph};
		firstStep: script.

	self
		assert: 1 equals: sut childCount;
		assert: sut objects first = Morph.