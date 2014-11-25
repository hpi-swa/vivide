accessing - convenience
objects: someObjects from: aPane

	| index |
	self assert: self tupleSize > 0. "Must not be called otherwise."
	self tupleSize = 1 ifTrue: [^ self objects: someObjects].

	index := self connections indexOf: (self connections detect: [:connection |
		connection source == aPane]).
	
	self objects at: index put: someObjects.
	
	self flag: #performance. "mt: Deferred evaluation?"
	self objects: self objects.