tests
test23ObjectEventNotifications

	| script node o |
	script := {
		[:morph | morph color]
			-> {#notifier -> [:morph |
					ViObjectEventNotifier when: #colorChanged from: morph]}
	} asScript.

	o := Morph new.
	node := script interpretScriptWith: {o}.
	
	self assert: (node nodes first object = o color).
	
	o color: Color yellow.
	self deny: (node nodes first object = o color).
	
	o triggerEvent: #colorChanged.
	ActiveWorld doOneSubCycle. "Deferred model updates."
	self assert: (node nodes first object = o color).