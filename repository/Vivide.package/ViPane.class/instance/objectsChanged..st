signals
objectsChanged: inputObjects

	self flag: #toRemove.
	
	"self emit."
	self emitInOwnerChain.