as yet unclassified
updateSubmorphsFor: node owner: morph

	self configureSubmorph: morph forNode: node. 
	
	node hasChildren ifFalse: [^ self].
	(node at: #weight) = 0 ifTrue: [^ self].

	self addSubmorphsFor: node owner: morph.