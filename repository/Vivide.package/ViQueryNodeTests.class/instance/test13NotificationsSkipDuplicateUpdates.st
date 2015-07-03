tests
test13NotificationsSkipDuplicateUpdates
	"If you schedule more than one update, be sure to update your children only once."
	
	| script view env |
	Smalltalk at: #queryNode put: 0.
	
	script := {[:class | 
		Smalltalk at: #queryNode put: (Smalltalk at: #queryNode) + 1.		
		class] -> {#notifier -> ViSystemChangeNotifier}} asScript.

	env := ViPane new.
	view := script updateView: nil forEnvironment: env.
		
	"Prepare view to update."
	sut firstStep: (ViQueryStep use: {self class} in: script).
	view model: sut.
	
	self assert: 1 equals: (Smalltalk at: #queryNode).
	Smalltalk at: #queryNode put: 0. "reset first"
	
	"Two updates at once."
	self class compile: 'shouldNotSeeMe ^ true'.
	self simulateSystemChangeAndCallbacks.

	self assert: 1 equals: (Smalltalk at: #queryNode).
	Smalltalk removeKey: #queryNode.