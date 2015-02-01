browsing
browseMessageSet: messageList name: title autoSelect: autoSelectString
	
	VivideLight active ifNil: [^super browseMessageSet: messageList name: title autoSelect: autoSelectString].
	
	#defaultProperties openScriptWith: {title}, messageList.