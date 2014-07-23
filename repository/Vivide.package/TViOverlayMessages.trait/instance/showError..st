overlay messages - show
showError: aText

	self isInWorld ifFalse: [^ self].
		
	self addMorph: ((UiMessage error: aText)
		disableTableLayout: true;  
		bottomRight: self messagePosition).