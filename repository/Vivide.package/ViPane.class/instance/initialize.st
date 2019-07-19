initialization
initialize

	super initialize.

	self
		layoutPolicy: ViOverlappingLayout new;
		color: Color transparent;
		extent: 150@150.
	
	model := ViModelNode new
		pane: self;
		inputForChildren: #();
		firstStep: nil.
	
	self
		initializeUiObjectChanges;
		initializeUiScriptChanges;
		initializeUiSystemChanges.

	self connect: self model signal: #modelReset toSelector: #notifyChangedResults.
	self connect: self signal: #scriptChanged: toSelector: #notifyChangedResults.

	self connect: self signal: #scriptChanged: toSelector: #recentQueriesAdd:.