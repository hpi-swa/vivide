initialization
initializePrimaryList

	primaryList := Morph new
		color: Color transparent;
		changeTableLayout;
		cellGap: 6;
		listDirection: #topToBottom;
		vResizing: #shrinkWrap;
		hResizing: #shrinkWrap.      