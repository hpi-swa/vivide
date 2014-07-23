accessing - query
currentQuery: aQueryStep
	
	self queryModel resetSilently.
	self queryModel firstStep next: aQueryStep.
	self updateViews.
	
	self currentQueryChanged: aQueryStep.