initialization
addLabelArea

	labelArea ifNotNil: [labelArea abandon].
	
	labelArea := Morph new
		color: Color transparent;
		changeTableLayout;
		listDirection: #leftToRight;
		vResizing: #shrinkWrap;
		hResizing: #spaceFill.
		
	self addMorph: labelArea.    