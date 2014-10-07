instance creation
onNode: aQueryNode

	^ self new
		firstStep: aQueryNode firstStep
		objects: (Dictionary new
			at: aQueryNode defaultGroup put: {aQueryNode inputForChildren};
			yourself)
		groups: {aQueryNode defaultGroup} asOrderedCollection
		contexts: (Dictionary new
			at: aQueryNode defaultGroup put: (aQueryNode context
				ifNil: [ViQueryContext new]
				ifNotNil: [:ctxt | ctxt copy]);
			yourself)
		stack: aQueryNode referenceStack copy