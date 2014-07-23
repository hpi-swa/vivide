loading - general
loadEditor: anEditor

	self isExpanded
		ifTrue: [anEditor expand]
		ifFalse: [anEditor collapse].
	
	self headerText ifNotNil: [:txt | anEditor headerText: txt].
		
"	anEditor objects: self objects."