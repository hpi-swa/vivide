accessing
id: aSymbolOrNil
	"Avoid setting the id to nil. Generate new id instead."
	
	| newId |
	self id = aSymbolOrNil ifTrue: [^ self].
	newId := aSymbolOrNil ifNil: [UUID new asString asSymbol].
	
	self id in: [:oldId |
		super id: newId.

		oldId ifNotNil: [
			self organization
				changeStepIdFrom: oldId
				to: newId]].