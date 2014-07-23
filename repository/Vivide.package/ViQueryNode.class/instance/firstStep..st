accessing
firstStep: aQueryStep

	firstStep == aQueryStep ifTrue: [^ self].

	self clearQueryChangeNotifications.
	firstStep := aQueryStep.