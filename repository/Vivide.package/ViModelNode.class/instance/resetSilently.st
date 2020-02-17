reset
resetSilently
	"Discard all children and unsubscribe from any related notifier."

	children ifNil: [^ self].

	self
		clearInputChangeNotifications;
		clearStepChangeNotifications.
		
	self resetChildrenSilently.