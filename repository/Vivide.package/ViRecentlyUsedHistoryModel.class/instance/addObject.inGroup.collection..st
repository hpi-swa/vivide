add/remove
addObject: anObject inGroup: aGroup collection: someObjects

	someObjects addFirst: anObject.
	self childInserted: 1 inGroup: aGroup.