*vivide
anyMethodAt: selector

	self withAllSuperclassesDo: [:class |
		(class includesSelector: selector)
			ifTrue: [^ class compiledMethodAt: selector]].
	^ nil