accessing - object
object: anObject

	self contentTree model object: anObject.
	self contentTree
		expandAllTopLevelNodes;
		"Select first row."
		currentNode: nil; selectNextRow.
		
	self artifact height: ((self optimalHeight min: 250) max: 50).