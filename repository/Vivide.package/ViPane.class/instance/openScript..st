initialization - pop-up
openScript: script
	
	LastHelperPane := nil.
	
	self recentScripts removeAll.
	self script: script.
	
	^ self open