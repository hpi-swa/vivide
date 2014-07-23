building
itemFor: aNode groupIndex: aGroupIndex isTopLevel: aBoolean

	| separator |
	separator := Morph new
		extent: 4@4;
		color: Color transparent.
		
	separator
		setProperty: #selectable toValue: false;
		setProperty: #drawLine toValue: true;
		setProperty: #hideIfFirst toValue: true;
		setProperty: #hideIfEmpty toValue: false.
		
	^ separator