signals
scriptChanged: newScript

	self flag: #toRemove.

	self emit.
	self emitInOwnerChain.