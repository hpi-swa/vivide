as yet unclassified
test05DuplicateObjects

	sut objects: #(2 2 3 3).
	self assert: (sut objects hasEqualElements: #(2 2 3 3)).