initialization
initialize

	super initialize.

	self
		layoutPolicy: ViOverlappingLayout new;
		color: Color transparent;
		extent: 150@150.
	
	self model: (ViModelNode new
		pane: self;
		inputForChildren: #();
		firstStep: nil;
		yourself).
	
	self
		initializeUiObjectChanges;
		initializeUiScriptChanges;
		initializeUiSystemChanges.