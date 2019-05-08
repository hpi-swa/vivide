reset
resetSilently
	"Discard all children and unsubscribe from any related notifier."

	children ifNil: [^ self].

	self
		clearUpdateNotifications;
		clearQueryChangeNotifications.
		
	self resetChildrenSilently.