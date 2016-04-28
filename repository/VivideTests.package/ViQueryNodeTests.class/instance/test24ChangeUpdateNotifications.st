tests
test24ChangeUpdateNotifications

	| script node o |
	script := {
		[:morph | morph color]
			-> {#notifier -> [:morph |
					ViChangeUpdateNotifier subject: morph aspect: #color]}
	} asScript.

	o := Morph new.
	node := script interpretScriptWith: {o}.
	
	self assert: (node nodes first object = o color).
	
	o color: Color yellow.
	self deny: (node nodes first object = o color).
	
	o changed: #color.
	ActiveWorld doOneSubCycle. "Deferred model updates."
	self assert: (node nodes first object = o color).