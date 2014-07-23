overlay messages - show
showWarning: aText

	self isInWorld ifFalse: [^ self].
		
	self addMorph: ((UiMessage warning: aText)
		disableTableLayout: true;  
		bottomRight: self messagePosition).