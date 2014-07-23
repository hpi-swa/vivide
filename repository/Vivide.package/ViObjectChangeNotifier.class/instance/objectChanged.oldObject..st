system triggers
objectChanged: anObject oldObject: objectCopy

	self trigger: ((ModifiedEvent item: anObject kind: self class objectKind) oldItem: objectCopy).