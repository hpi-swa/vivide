tests
test04ScriptNotifier
	"Use this notifier in scripts."
	
	| object script model tool |
	object := Morph new color: Color red; yourself.
	script := { [:morph | morph color] -> { #notifier -> [notifier] } } asScript.
	tool := [object color: Color yellow. notifier objectChanged: object].

	model := script interpretScriptWith: {object}.
	self assert: Color red equals: model firstNode object.
	
	tool value.
	self processDeferredUpdates.
	self assert: Color yellow equals: model firstNode object.		