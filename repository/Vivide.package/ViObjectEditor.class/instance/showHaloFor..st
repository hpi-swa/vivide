actions
showHaloFor: anObjectExplorerNode
	
	self hasKeyboard ifFalse: [^ self].
	
	anObjectExplorerNode ifNotNil: [:node | 
		"Defer send because mouse click removes halo."
		node baseObject in: [:o | o isMorph ifTrue: [Project current addDeferredUIMessage: [o addHalo]]]].