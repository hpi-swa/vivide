reset
resetChildrenSilently

	children ifNil: [^ self].

	self clearAllUpdateNotifications.
	self clearAllQueryChangeNotifications.

	children := nil.
	groups := nil.