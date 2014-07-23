examples
ex01

	| tb |
	tb := ViGroupedToolbar new.
	
	(tb addGroup: #one icon: UiSilkIcons carIcon)
		addObjects: Morph allSuperclasses.
	(tb addGroup: #two icon: UiSilkIcons emoticonSmileIcon)
		addObjects: UiScrollBar allSuperclasses.
	(tb addGroup: #three icon: UiSilkIcons emailIcon)
		addObjects: UiTreeView allSuperclasses.
	(tb addGroup: #four icon: UiSilkIcons rainbowIcon)
		addObjects: ViMethodEditor allSuperclasses.
		
	^ tb