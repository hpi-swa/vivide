actions
addObject: anObject
	"Show the object in the list of received objects."
	
	self ui incomingList model
		addChild: (UiPropertyItemNode new
			at: #object put: anObject;
			at: #icon put: ((ViIconService doObject: anObject) ifNil: [ViIcons blankIcon]);
			at: #text put: ((ViLabelStringService doObject: anObject),
				' <font color="#AAAAAA">', (ViObjectOriginService doObject: anObject), '</font>') asHtmlText; 
			yourself).
			
	ViAnimatedImageMorph
		flyOutOn: self ui incomingList
		with: UiFugueIcons inboxDownloadIcon.