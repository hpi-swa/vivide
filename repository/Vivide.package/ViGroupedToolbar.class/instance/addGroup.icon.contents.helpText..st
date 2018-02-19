add/remove
addGroup: label icon: aForm contents: blockOrList helpText: aString

	self groups add: label -> (ViGroupedToolbarModel new
		contents: blockOrList;
		helpText: aString).
	
	primaryList addMorphBack: (aForm scaledToDisplay asMorph balloonText: label).
	secondaryList height: (primaryList fullBounds height max: TextStyle defaultFont height * 6).
	
	^ self groups last value