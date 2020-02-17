converting
convertFromBlock: aBlockClosure
	"Do not use this closure to avoid keeping arbitrary references to objects."
	
	^ aBlockClosure decompile decompileString asScript