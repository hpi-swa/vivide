initialization
initializeFor: aScript in: anEnvironment

	self setProperty: #viewId toValue: self class defaultViewId.     
	self connect: self signal: #selectionChanged: to: anEnvironment selector: #notifyChangedSelection:.

	self
		color: Color transparent;
		layoutPolicy: ViOverlappingLayout new;
		addMorphBack: (UiScrollArea new
			hResizing: #spaceFill;
			vResizing: #spaceFill;
			widget: Morph new;
			yourself)