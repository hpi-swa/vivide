updating
doYieldAllObjects

	(self hasProperty: #objectsToYield)
		ifFalse: [^ self].
	self yield: ((self valueOfProperty: #objectsToYield)
		collect: [:object | Dictionary new at: #object put: object; yourself]).
	self removeProperty: #objectsToYield.  