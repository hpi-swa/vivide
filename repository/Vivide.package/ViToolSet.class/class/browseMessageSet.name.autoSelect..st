browsing
browseMessageSet: messageList name: title autoSelect: autoSelectString
	
	VivideLight active ifNil: [^super browseMessageSet: messageList name: title autoSelect: autoSelectString].
	
	ViQueryStep defaultProperties openScriptWith: {title}, messageList.