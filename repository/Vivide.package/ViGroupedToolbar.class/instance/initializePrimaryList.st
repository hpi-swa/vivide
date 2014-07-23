initialization
initializePrimaryList

	primaryList := Morph new
		color: Color transparent;
		changeTableLayout;
		cellInset: 6;
		listDirection: #topToBottom;
		vResizing: #shrinkWrap;
		hResizing: #shrinkWrap.      