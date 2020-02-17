tests - notifications and updates
test03MergeRepeatedNotifications
	"Avoid redundant updates by deferring the updates."
	
	| script object model |
	script := { [:valueHolder |
		valueHolder contents: valueHolder contents + 1.
		valueHolder contents]
		 -> { #notifier -> [ViEventNotifier named: #test] }
	} asScript.
	object := ValueHolder new.
	model := script interpretScriptWith: {object}.

	object contents: 1.	
	self
		assert: #(2) equals: model objects;
		assert: #(2) equals: model objects.


	(ViEventNotifier named: #test) trigger; trigger; trigger.
	self processDeferredUpdates.
	
	self
		assert: #(3) equals: model objects;
		assert: #(3) equals: model objects.