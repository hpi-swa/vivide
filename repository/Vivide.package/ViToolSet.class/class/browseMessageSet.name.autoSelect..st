browsing
browseMessageSet: messageList name: title autoSelect: autoSelectString
	
	VivideLight active ifNil: [^super browseMessageSet: messageList name: title autoSelect: autoSelectString].
	
	^ VivideLight active openArtifact: messageList