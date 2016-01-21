*vivide
keysAreOrdered
	self keysDo: [:each |
		(each respondsTo: #<=) ifFalse: [^ false]].
	^ true