vivide - other
doProtocol: aProtocol

	^ aProtocol theClass isMeta
		ifTrue: [(super doProtocol: aProtocol) asTextFromHtml]
		ifFalse: [(super doProtocol: aProtocol)]