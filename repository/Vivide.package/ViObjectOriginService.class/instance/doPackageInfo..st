operations
doPackageInfo: aPackageInfo

	| mcp wc |
	mcp := aPackageInfo mcPackage.
	
	mcp hasWorkingCopy
		ifFalse: [^ '-'].

	wc := mcp workingCopy.
		
	wc repositoryGroup repositories size > 1 "cache repo and a real one"
		ifFalse: [^ wc repositoryGroup repositories first description]
		ifTrue: [^ wc repositoryGroup repositories second description]