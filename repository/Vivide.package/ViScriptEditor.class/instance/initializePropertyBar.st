initialization
initializePropertyBar

	self propertyBar: (Morph new
		color: Color transparent;
		extent: 5@5;
		layoutPolicy: TableLayout new;
		cellGap: 3;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		listDirection: #leftToRight;
		wrapDirection: #topToBottom;
		yourself).