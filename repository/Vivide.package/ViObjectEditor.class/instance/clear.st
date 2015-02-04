memento - cleanup
clear

"	super clear."
	
	self contentTree model update.
	self contentTree expandAllTopLevelNodes.
	self contentTree currentNode: (self contentTree model childAt: 1 inGroup: self contentTree model groups first).
	
	self updateToolbars.