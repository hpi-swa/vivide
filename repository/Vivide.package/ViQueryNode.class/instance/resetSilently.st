reset
resetSilently

	self
		clearUpdateNotifications;
		clearAllUpdateNotifications;
		clearQueryChangeNotifications;
		clearAllQueryChangeNotifications.

	children := nil.
	groups := nil.