tests - notifications and updates
test01NamedEventNotifier

	| script object model |
	script := { [:valueHolder | valueHolder contents]
		 -> { #notifier -> [ViEventNotifier named: #test] }
	} asScript.
	object := ValueHolder new.
	model := script interpretScriptWith: {object}.

	object contents: 1.	
	self assert: #(1) equals: model objects.
	
	object contents: 2.
	self assert: #(1) equals: model objects.

	(ViEventNotifier named: #test) trigger.
	self processDeferredUpdates.
	self assert: #(2) equals: model objects.