browsing
browseMessageSet: messageList name: title autoSelect: autoSelectString
	
	VivideLight active ifNil: [^super browseMessageSet: messageList name: title autoSelect: autoSelectString].
	
	^ messageList size <= 5
		ifTrue: [#artifacts openScriptWith: messageList]
		ifFalse: [#defaultPropertiesExtended openScriptWith: messageList]