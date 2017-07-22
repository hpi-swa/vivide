as yet unclassified
initialize

	super initialize.
	
	self
		color: Color transparent;
		layoutPolicy: ViOverlappingLayout new;
		addMorph: ((PluggableTextMorphPlus
			on: self
			text: #text
			accept: #text:
			readSelection: #selection
			menu: nil) balloonTextSelector: #help) .