tests
test23PropagateOnNotifier

	| listener last |
	listener := ViPane new.
	
	sut script: {[Time now] -> {
		#notifier -> [ViEventNotifier named: #test23PropagateOnNotifier]}} asScript.
	
	(ViResultsConnection from: sut to: listener) attach.
	
	self assert: sut results notEmpty.
	last := sut results first.
	self assert: last equals: sut results first. "stable results"
	self assert: (listener objects hasEqualElements: sut results).
	
	ViEventNotifier trigger: #test23PropagateOnNotifier.
	ActiveWorld doOneSubCycle.
	self assert: last < listener objects first.