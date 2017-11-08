accessing - pane api
objects: someObjects from: aPane
	"Pane API copied from ViPane."
	
	self assert: self tupleSize > 0. "Must not be called otherwise."
	
	lastUpdateId := aPane lastUpdateId.	
	
	self tupleSize = 1
		ifTrue: [self objects: someObjects]
		ifFalse: [self triggerDeferredObjects].