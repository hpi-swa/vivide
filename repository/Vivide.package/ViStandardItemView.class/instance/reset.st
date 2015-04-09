pane api
reset

	(self valueOfProperty: #expandAll ifAbsent: [false])
		ifTrue: [self currentQueryView expandAllNodes].  

	self updateQueryCommands.
	self findNext.
	self ensureSelection.