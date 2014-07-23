overlay messages - show
showInformation: aText
	
	self isInWorld ifFalse: [^ self].
	
	self addMorph: ((UiMessage information: aText)
		disableTableLayout: true;  
		bottomRight: self messagePosition).