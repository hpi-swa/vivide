accessing
id: aSymbol

	self id = aSymbol ifTrue: [^ self].
	self id in: [:oldId |
		super id: aSymbol.
		oldId ifNotNil: [
			self organization
				changeDefinitionIdFrom: oldId
				to: id]].