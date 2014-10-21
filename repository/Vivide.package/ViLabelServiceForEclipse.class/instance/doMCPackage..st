as yet unclassified
doMCPackage: mcp 

	mcp hasWorkingCopy
	ifFalse: [^ 'local']
	ifTrue: [mcp workingCopy repositoryGroup repositories in: [:repos |
		(repos size > 1 ifTrue: [repos second] ifFalse: [repos first]) in: [:repo |
			^ repo remoteUrl]]]