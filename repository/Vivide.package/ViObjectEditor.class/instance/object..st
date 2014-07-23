accessing - object
object: anObject

	self contentTree model object: anObject.
	self contentTree
		expandAllTopLevelNodes;
		currentNode: (self contentTree model childAt: 1 inGroup: self contentTree model groups first).
		
	self updateToolbars.