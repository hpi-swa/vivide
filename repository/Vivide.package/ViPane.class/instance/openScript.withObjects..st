initialization - pop-up
openScript: script withObjects: someObjects
	
	LastHelperPane := nil.
	
	self recentScripts removeAll.
	
	self
		script: script;
		objects: someObjects.
		
	^ self open