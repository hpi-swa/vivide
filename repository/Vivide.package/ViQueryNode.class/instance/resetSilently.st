as yet unclassified
resetSilently

	self
		clearUpdateNotifications;
		clearAllUpdateNotifications;
		clearQueryChangeNotifications;
		clearAllQueryChangeNotifications.

	children := nil.
	groups := nil.