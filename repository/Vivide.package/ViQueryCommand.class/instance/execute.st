as yet unclassified
execute

	^ self isGlobal
		ifTrue: [self executeMethod: self definition method]
		ifFalse: [nil]