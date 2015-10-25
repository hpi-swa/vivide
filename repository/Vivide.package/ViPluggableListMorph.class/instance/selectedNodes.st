accessing
selectedNodes

	selectionMap ifNil: [
		^ (self selectedNode ifNil: [{}] ifNotNil: [:node | {node}])].

	^ (selectionMap collectWithIndex: [:selected :index |
		selected
			ifTrue: [self model childAt: index inGroup: self model groups first]
			ifFalse: []]) select: [:ea | ea notNil]