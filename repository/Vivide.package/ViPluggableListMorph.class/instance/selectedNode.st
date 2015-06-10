as yet unclassified
selectedNode

	self currentSelectionIndex = 0 ifTrue: [^ nil].
	^ self model
		childAt: self currentSelectionIndex
		inGroup: self model groups first