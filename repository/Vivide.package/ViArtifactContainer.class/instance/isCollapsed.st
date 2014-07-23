geometry - testing
isCollapsed

	^ self submorphs size = 1 and: [self submorphs first == self summaryContainer]