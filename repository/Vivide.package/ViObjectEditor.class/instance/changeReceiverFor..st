actions
changeReceiverFor: anObjectExplorerNode
	"Make do-its in source code edit relative to selected object in tree."
	
	self sourceCodeEdit model doItReceiver:
		(anObjectExplorerNode ifNotNil: [:node | 
			node baseObject]).