private
processSteps
	"Creates child nodes with properties. Idempotent."

	| interpreter |

	self firstStep ifNil: [
		self assert: self referenceStack isEmpty.
		^ self].

	interpreter := ViQueryInterpreter new
		firstStep: self firstStep
		objects: (Dictionary new
			at: self defaultGroup put: {self inputForChildren};
			yourself)
		groups: {self defaultGroup} asOrderedCollection
		contexts: (Dictionary new
			at: self defaultGroup put: (self context
				ifNil: [ViQueryContext new]
				ifNotNil: [:ctxt | ctxt copy]);
			yourself)
		stack: self referenceStack copy.

	interpreter upToNextProperties.
	
	"Prepare model."
	groups := interpreter groups.
	children := Dictionary new.
	groups do: [:group | children at: group put: OrderedCollection new].
	
	self flag: #remove. "mt: Maybe we want to keep empty groups?"
	interpreter hasObjects ifFalse: [^ self "no children"].

	"Create child nodes."
	groups do: [:group | children at: group put: (
		(interpreter objectsFor: group) collect: [:object |
			(ViQueryNode newFrom: (interpreter propertiesFor: object))
				inputForChildren: object;
				firstStep: interpreter currentStep;
				context: (interpreter contextFor: group);
				referenceStack: interpreter stack;
				yourself])].