tests
test08ScriptNotifier
	"Use this notifier in scripts."
	
	| far model |
	far := [:num | num] asScript.
	far organization notifier: ViScriptChangeNotifier new.
	
	script sourceCode: (ViScriptTemplate expandString: '[:step | step id]').
	script setProperty: #notifier toValue: [:object | object notifier].
	
	model := script interpretScriptWith: {far}.
	self assert: far id equals: model firstNode object.
	
	far id: #test08.
	self processDeferredUpdates.
	self assert: far id equals: model firstNode object.	