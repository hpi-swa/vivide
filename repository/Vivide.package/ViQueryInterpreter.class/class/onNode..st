instance creation
onNode: aQueryNode

	^ self new
		currentStep: aQueryNode firstStep;
		objects: (Dictionary new
			at: aQueryNode defaultGroup put: {aQueryNode inputForChildren}; "void tuple flattening by accident; wrap into array"
			yourself);
		groups: {aQueryNode defaultGroup} asOrderedCollection;
		stack: aQueryNode referenceStack copy