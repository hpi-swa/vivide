instance creation
fromNode: node
	"Configure a new interpreter based on information from the given model node."

	| newInstance |
	newInstance := self new.
	
	newInstance
		first: node firstStep;
		objects: node inputForChildren;
		bindings: Dictionary new;
		bind: #thisPane to: node pane;
		bind: #thisView to: (node pane ifNotNil: #view).
		
	node referenceStack
		ifNil: [
			"Root node."
			newInstance
				stack: (Stack new push: node firstStep activate; yourself);
				activateNext]
		ifNotNil: [:stackCopy |
			"Intermediate node."
			newInstance
				next: node firstStep;
				stack: stackCopy].
			
	^ newInstance
