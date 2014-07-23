tests
test14NotificationsSkipNestedUpdates
	"If your parent updates, do not update because you will be invalid anyway."
	
	| q1 p q2 view env oldNodes |
	Smalltalk at: #queryNode put: 0.
	q1 := ViQueryStep transform: '[:objs | objs]'.
	p := ViQueryStep property: '[:obj | obj asString]'.
	q2 := ViQueryStep transform: '[:objs |
	Smalltalk at: #queryNode put: (Smalltalk at: #queryNode) + 1.
	objs]'.
	
	q1 next: p. p next: q2.
	env := ViPane new.
	view := q1 updateView: nil forEnvironment: env.
	
	q1 definition
		updateSetDefinition: ViQueryUpdateDefinition defAllSystemChangeNotifications;
		updateClearDefinition: ViQueryUpdateDefinition defNoSystemChangeNotifications.
	q2 definition
		updateSetDefinition: ViQueryUpdateDefinition defAllSystemChangeNotifications;
		updateClearDefinition: ViQueryUpdateDefinition defNoSystemChangeNotifications.
	
	"Prepare view to update."
	sut firstStep: (ViQueryStep use: #(1 2 3 4 5) in: q1).
	view model: sut.
	view currentVisibleView expandAllTopLevelNodes.
	
	self assert: 5 equals: (Smalltalk at: #queryNode).
	Smalltalk at: #queryNode put: 0. "reset first"
	
	"Two updates at once."
	SystemChangeNotifier uniqueInstance
		evaluated: #test14NotificationsSkipNestedUpdates.
	self simulateSystemChangeAndCallbacks.

	self assert: 5 equals: (Smalltalk at: #queryNode).
	Smalltalk removeKey: #queryNode.