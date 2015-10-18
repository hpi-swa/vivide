as yet unclassified
tryClose

	self object isDefault
		ifTrue: [self tryDeleteScript]
		ifFalse: [self deleteScript].