accessing
baseName

	^ self isExtension
		ifTrue: [self protocolname allButFirst]
		ifFalse: [self protocolname]