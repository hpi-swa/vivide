accessing - many
references
	"Like Squeak's senders."
	
	self isRegistered ifFalse: [#()].
	^ self organization referencesToStep: self