as yet unclassified
assureIdentityScript

	self flag: #todo. "mt: Is #isNew really a good way to check for identity property?"
	((self script notNil
		and: [(self script valueOfProperty: #isNew) == true])
		and: [self script tupleSize = self tupleSizeDynamic])
			ifFalse: [self script: self createIdentityScript].