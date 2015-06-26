as yet unclassified
named: aName

	EventNotifiers ifNil: [EventNotifiers := Dictionary new].

	^ EventNotifiers
		at: aName
		ifAbsentPut: [self new name: aName; yourself]