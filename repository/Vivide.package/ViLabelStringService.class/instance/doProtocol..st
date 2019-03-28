vivide - other
doProtocol: aProtocol

	^ aProtocol theClass isMeta
		ifTrue: ['<u>', aProtocol protocolname, '</u>']
		ifFalse: [aProtocol protocolname]