instance creation
onNode: aQueryNode

	^ self new
		currentStep: aQueryNode firstStep;
		objects: (Dictionary new
			at: aQueryNode defaultGroup put: {aQueryNode inputForChildren};
			yourself);
		groups: {aQueryNode defaultGroup} asOrderedCollection;
		stack: aQueryNode referenceStack copy