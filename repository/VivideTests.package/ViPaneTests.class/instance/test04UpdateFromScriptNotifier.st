tests - updates and script selection
test04UpdateFromScriptNotifier

	| pane last |
	pane := ViPane new.
	pane script: {[Time now] -> {#notifier -> [ViEventNotifier named: #test04UpdateFromScriptNotifier]}} asScript.
	
	last := pane allResults first.
	self assert: last = pane allResults first.
	
	ViEventNotifier trigger: #test04UpdateFromScriptNotifier.
	self assert: last = pane allResults first.
	
	self forceGuiUpdate.
	self assert: last < pane allResults first.