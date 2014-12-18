accessing - object
object: anObject

	self contentTree model object: anObject.
	self contentTree
		expandAllTopLevelNodes;
		currentNode: (self contentTree model childAt: 1 inGroup: self contentTree model groups first).

	self artifact height: ((self optimalHeight min: 250) max: 50).
		
	self updateToolbars.