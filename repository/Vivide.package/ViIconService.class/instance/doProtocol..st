vivide - other
doProtocol: aProtocol

"	aProtocol isExtension
		ifTrue: [^ UiSilkIcons tagRedIcon].
"	
	(UiPlatform current string: aProtocol protocolname includesSubstring: 'private')
		ifTrue: [^ UiFugueIcons eyeIcon].
	
	(UiPlatform current string: aProtocol protocolname includesSubstring: 'draw')
		ifTrue: [^ UiFugueIcons paintCanPaintBrushIcon].
	
	(UiPlatform current string: aProtocol protocolname includesSubstring: 'accessing')
		ifTrue: [^ UiFugueIcons blockIcon].
	
	(UiPlatform current string: aProtocol protocolname includesSubstring: 'event')
		ifTrue: [^ UiFugueIcons keyboardIcon].
		
	(UiPlatform current string: aProtocol protocolname includesSubstring: 'geometry')
		ifTrue: [^ UiFugueIcons layout6Icon].
	
	(UiPlatform current string: aProtocol protocolname includesSubstring: 'creati') "creation or creating"
		ifTrue: [^ UiFugueIcons newIcon].
		
	(UiPlatform current string: aProtocol protocolname includesSubstring: 'testing')
		ifTrue: [^ UiFugueIcons questionBalloonIcon].
		
	(UiPlatform current string: aProtocol protocolname includesSubstring: 'updating')
		ifTrue: [^ UiFugueIcons arrowCircleDouble135Icon].
		
	(aProtocol protocolname beginsWith: 'initializ') "initialization or initialize/release"
		ifTrue: [^ UiFugueIcons hammerScrewdriverIcon].
		
	(aProtocol protocolname beginsWith: 'convert')
		ifTrue: [^ UiFugueIcons documentConvertIcon].

	(UiPlatform current string: aProtocol protocolname includesSubstring: 'copy')
		ifTrue: [^ UiFugueIcons documentCopyIcon].
		
	(UiPlatform current string: aProtocol protocolname includesSubstring: 'signals')
		ifTrue: [^ UiSilkIcons bulletFeedIcon].
	
	^ ViIconService blankIcon "UiSilkIcons tagBlueIcon"