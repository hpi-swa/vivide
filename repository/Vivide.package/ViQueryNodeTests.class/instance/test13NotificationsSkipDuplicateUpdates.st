tests
test13NotificationsSkipDuplicateUpdates
	"If you schedule more than one update, be sure to update your children only once."
	
	| q view env |
	Smalltalk at: #queryNode put: 0.
	q := ViQueryStep transform: '[:objs |
	Smalltalk at: #queryNode put: (Smalltalk at: #queryNode) + 1.
	objs]'.
	env := ViPane new.
	view := q updateView: nil forEnvironment: env.
	
	q definition
		updateSetDefinition: ViQueryUpdateDefinition defAllSystemChangeNotifications;
		updateClearDefinition: ViQueryUpdateDefinition defNoSystemChangeNotifications.
	
	"Prepare view to update."
	sut firstStep: (ViQueryStep use: #(1 2 3 4 5) in: q).
	view model: sut.
	
	self assert: 1 equals: (Smalltalk at: #queryNode).
	Smalltalk at: #queryNode put: 0. "reset first"
	
	"Two updates at once."
	SystemChangeNotifier uniqueInstance
		evaluated: #test13NotificationsSkipDuplicateUpdates.
	self simulateSystemChangeAndCallbacks.

	self assert: 1 equals: (Smalltalk at: #queryNode).
	Smalltalk removeKey: #queryNode.