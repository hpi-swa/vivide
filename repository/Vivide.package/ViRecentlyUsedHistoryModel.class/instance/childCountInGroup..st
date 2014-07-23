item model - hierarchy
childCountInGroup: groupName

	self flag: #performance. "mt: Faster than #perform:?"
	^ (self instVarNamed: groupName asLowercase) size