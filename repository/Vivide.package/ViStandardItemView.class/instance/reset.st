pane api
reset

	(self valueOfProperty: #expandAll ifAbsent: [false])
		ifTrue: [self currentQueryView expandAllNodes].  

	self updateQueryCommands.
	self findNext.
	
	(self valueOfProperty: #selectNone ifAbsent: [false])
		ifTrue: [self currentViews do: [:view | view selectNone]]
		ifFalse: [self ensureSelection].