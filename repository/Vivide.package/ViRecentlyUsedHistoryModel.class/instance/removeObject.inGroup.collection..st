add/remove
removeObject: anObject inGroup: aGroup collection: someObjects

	| oldIndex |
	oldIndex := someObjects indexOf: anObject.
	someObjects remove: anObject.
	
	self childRemoved: oldIndex inGroup: aGroup.