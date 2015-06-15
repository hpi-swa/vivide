as yet unclassified
isSelectedAt: index

	self flag: #bug. "mt: Bug in PluggableListMorphOfMany"
	^ index > 0 and: [self selectionMap at: index]