updating - kernel
beginUpdateChainWith: block
	"Use this to trigger an update programmatically, that is, without any active user input event."

	| previousEvent |
	previousEvent := ActiveEvent.
	ActiveEvent := nil.
	
	lastUpdateId := UUID new.
	forceUpdate := true.
	
	[block cull: self]
		ensure: [ActiveEvent := previousEvent].