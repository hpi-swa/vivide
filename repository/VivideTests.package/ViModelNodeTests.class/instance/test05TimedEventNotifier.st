tests - notifications and updates
test05TimedEventNotifier

	| script object model delay |
	script := {
		[:valueHolder |
			valueHolder contents: valueHolder contents + 1.
			valueHolder contents]
		 -> { #notifier -> [ViTimedNotifier every: 100 milliSeconds] }
	} asScript.
	object := ValueHolder new contents: 0; yourself.
	model := script interpretScriptWith: {object}.
	delay := Delay forMilliseconds: 100.
	
	1 to: 5 do: [:index |
		self assert: {index} equals: model objects.
		delay wait.
		
		"1) Process deferred delays."
		self processDeferredUpdates.
		"2) Process deferred model updates."
		self processDeferredUpdates].