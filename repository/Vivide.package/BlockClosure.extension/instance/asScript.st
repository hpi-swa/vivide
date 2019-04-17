*vivide-queries
asScript
	"Do not use this closure to avoid keeping arbitrary references to objects."
	^ self decompile decompileString asScript