vivide - other
doProtocol: aProtocol

	aProtocol protocolname = Categorizer default
		ifTrue: [^ Color red alpha: 0.4].
	
	aProtocol isOverride
		ifTrue: [^ Color blue alpha: 0.3].
	
	aProtocol isExtension
		ifTrue: [^ (Color gray: 0.85) alpha: 0.7].
		
	^ Color transparent