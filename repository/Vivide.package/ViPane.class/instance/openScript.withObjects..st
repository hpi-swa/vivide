initialization - pop-up
openScript: symbolOrBlockOrScript withObjects: someObjects
	
	LastHelperPane := nil.
	
	self recentScripts removeAll.
	
	self
		script: symbolOrBlockOrScript asScript;
		objects: someObjects.
		
	^ self open