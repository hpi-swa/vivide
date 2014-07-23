as yet unclassified
objects: someObjects from: aPane

	| index |
	self assert: self tupleSize > 0. "Must not be called otherwise."
	self tupleSize = 1 ifTrue: [^ self objects: someObjects].

	index := (self providersForSelections includes: aPane)
		ifTrue: [self providersForSelections indexOf: aPane]
		ifFalse: [self providersForSelections size + (self providersForResults indexOf: aPane)].
	
	self objects at: index put: someObjects.
	self objects: self objects.