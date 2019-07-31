updating - kernel
beginUpdateChainWith: block
	"Use this to trigger an update programmatically, that is, without any active user input event."

	| previousEvent |
	previousEvent := ActiveEvent.
	ActiveEvent := nil.
	
	self hasLocalCycle
		ifTrue: [forceUpdate := #once]
		ifFalse: [forceUpdate := #always].

	lastUpdateId := UUID new.
	
	[block cull: self]
		ensure: [ActiveEvent := previousEvent].