accessing - object
context: aClassOrProtocol

	aClassOrProtocol isBehavior
		ifTrue: [self artifact theClass: aClassOrProtocol]
		ifFalse: [
			self artifact
				theClass: aClassOrProtocol theClass;
				protocol: aClassOrProtocol protocolname].