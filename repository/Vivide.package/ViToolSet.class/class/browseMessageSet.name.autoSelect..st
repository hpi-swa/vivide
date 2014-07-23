browsing
browseMessageSet: messageList name: title autoSelect: autoSelectString
	
	ActiveVivide ifNil: [^super browseMessageSet: messageList name: title autoSelect: autoSelectString].
	
	^ ActiveVivide openArtifact: messageList