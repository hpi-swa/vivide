add/remove
addGroup: label icon: aForm contents: blockOrList helpText: aString

	self groups add: label -> (ViGroupedToolbarModel new
		contents: blockOrList;
		helpText: aString).
	
	primaryList addMorphBack: (aForm asMorph balloonText: label).
	secondaryList height: (primaryList fullBounds height max: 100).
	
	self selectGroupAt: self groupCount.  
	
	^ self groups last value