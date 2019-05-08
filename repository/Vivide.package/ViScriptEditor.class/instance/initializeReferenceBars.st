initialization
initializeReferenceBars

	self referenceBeforeBar: (Morph new
		color: self class beforeBarBackgroundColor;
		extent: 5@5;
		borderWidth: 1;
		borderColor: self class beforeBarTextColor;
		cornerStyle: #rounded;
		cornerRadius: (3 * RealEstateAgent scaleFactor) truncated;
		layoutPolicy: TableLayout new;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		listDirection: #leftToRight;
		wrapDirection: #topToBottom;
		balloonText: 'Referenced scripts <b>before</b> this step' translated asHtmlText
		yourself).

	self referenceAfterBar: (Morph new
		color: self class afterBarBackgroundColor;
		extent: 5@5;
		borderWidth: 1;
		borderColor: self class afterBarTextColor;
		cornerStyle: #rounded;
		cornerRadius: (3 * RealEstateAgent scaleFactor) truncated;
		layoutPolicy: TableLayout new;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		listDirection: #leftToRight;
		wrapDirection: #topToBottom;
		balloonText: 'Referenced scripts <b>after</b> this step' translated asHtmlText
		yourself).