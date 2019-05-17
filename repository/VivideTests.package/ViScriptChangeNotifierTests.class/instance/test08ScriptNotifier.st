tests
test08ScriptNotifier
	"Use this notifier in scripts."
	
	| example model |
	example := { [:step | step label] -> { #notifier -> [:object | object notifier] } } asScript.	
	model := example interpretScriptWith: {script}.

	script label: 'unnamed'.
	self assert: 'unnamed' equals: model firstNode object.
	
	script label: 'test08'. self processDeferredUpdates.
	self assert: 'test08' equals: model firstNode object.	