accessing - query
currentQuery: aQueryStep
	
	Cursor wait showWhile: [
		self queryModel resetSilently.
		self queryModel firstStep next: aQueryStep.
		self updateViews].
	
	self currentQueryChanged: aQueryStep.