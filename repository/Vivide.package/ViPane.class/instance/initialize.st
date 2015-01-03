initialization
initialize

	super initialize.

	self
		layoutPolicy: ViOverlappingLayout new;
		color: Color transparent;
		extent: 150@150.
	
	model := ViQueryNode new
		pane: self;
		firstStep: (ViQueryFillStep new objects: #()).
	
	self
		initializeUiObjectChanges;
		initializeUiQueryChanges.

	self connect: self model signal: #modelReset toSelector: #notifyChangedResults.
	self connect: self signal: #currentQueryChanged: toSelector: #notifyChangedResults.

	self connect: self signal: #currentQueryChanged: toSelector: #recentQueriesAdd:.