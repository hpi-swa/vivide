pane api
reset

	(self valueOfProperty: #expandAll ifAbsent: [false])
		ifTrue: [self currentQueryView expandAllNodes].  

	(self valueOfProperty: #expandTop ifAbsent: [false])
		ifTrue: [self currentQueryView expandAllTopLevelNodes ].  

	self updateQueryCommands.
	self findNext.
	
	(self valueOfProperty: #selectNone ifAbsent: [false])
		ifTrue: [self currentViews do: [:view | view selectNone]]
		ifFalse: [(self valueOfProperty: #selectSame ifAbsent: [false])
			ifFalse: [self ensureSelection]].