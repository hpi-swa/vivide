instance creation
onNode: aModelNode
	"Configure a new interpreter based on information from the given model node."

	^ self new
		currentStep: aModelNode firstStep;
		objects: aModelNode inputForChildren;
		stack: aModelNode referenceStack copy