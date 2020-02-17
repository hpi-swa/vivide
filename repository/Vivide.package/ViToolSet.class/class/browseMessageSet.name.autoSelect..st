browsing
browseMessageSet: messageList name: title autoSelect: autoSelectString
	"Senders, Implementors, inst-var references, ...."
		
	VivideLight active ifNil: [^super browseMessageSet: messageList name: title autoSelect: autoSelectString].
	
	^ messageList size <= 5
		ifTrue: [#artifacts openScriptWith: messageList]
		ifFalse: [#defaultPropertiesExtended openScriptWith: messageList]