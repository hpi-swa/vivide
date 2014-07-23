private
setPanelPositionAt: globalBounds
	"If a panel was built, show it relative to the given global bounds."
	
	| globalRight |
	self panel ifNil: [^ self].
	
	self panel fullBounds.
	
	self flag: #unfinished. "mt: #right and #bottom is not considered"
	
	self preferredEdge == #top ifTrue: [
		globalRight := globalBounds left.
		(globalRight + self panel width) > ActiveWorld right
			ifTrue: [self panel bottomLeft: globalBounds left - (globalRight + self panel width - ActiveWorld right) @ globalBounds top]
			ifFalse: [self panel bottomLeft: globalBounds topLeft].
		^ self].
		
	

	globalRight := globalBounds right.
	(globalRight + self panel width) > ActiveWorld right
		ifTrue: [(globalBounds left - self panel width) < ActiveWorld left
			ifFalse: [self panel topRight: globalBounds topLeft]
			ifTrue: [self panel topLeft: globalBounds bottomLeft]]
		ifFalse: [self panel topLeft: globalRight @ globalBounds top].
	self panel bottom: (ActiveWorld bottom min: self panel bottom).