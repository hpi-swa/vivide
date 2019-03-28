vivide - other
doProtocol: aProtocol

	^ aProtocol theClass isMeta
		ifTrue: [(super doProtocol: aProtocol) asHtmlText]
		ifFalse: [(super doProtocol: aProtocol)]