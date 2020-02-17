reset
resetChildrenSilently

	children ifNil: [^ self].

	self clearAllInputChangeNotifications.
	self clearAllStepChangeNotifications.

	children := nil.