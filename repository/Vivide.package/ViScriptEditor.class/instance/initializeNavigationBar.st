initialization
initializeNavigationBar

	self navigationBar: (Morph new
		color: Color transparent;
		extent: 5@5;
		layoutPolicy: TableLayout new;
		cellGap: 2;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		listDirection: #leftToRight;
		wrapDirection: #topToBottom;
		yourself).