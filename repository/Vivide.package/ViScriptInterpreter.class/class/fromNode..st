instance creation
fromNode: node
	"Configure a new interpreter based on information from the given model node."

	^ self new
		first: node firstStep;
		next: node firstStep;
		objects: node inputForChildren;
		stack: node referenceStack copy;
		bindings: Dictionary new;
		bind: #thisPane to: node pane;
		bind: #thisView to: (node pane ifNotNil: #view);
		yourself