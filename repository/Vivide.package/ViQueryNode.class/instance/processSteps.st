private
processSteps
	"Creates child nodes with properties. Idempotent."

	| interpreter |

	self firstStep ifNil: [
		self assert: self referenceStack isEmpty.
		^ self].

	interpreter := ViQueryInterpreter onNode: self.
	interpreter upToNextProperties.
	
	"Prepare model."
	groups := interpreter groups.
	children := Dictionary new.
	groups do: [:group | children at: group put: OrderedCollection new].
	
	"Create child nodes."
	groups do: [:group | children
		at: group
		put: (interpreter createNodesForGroup: group)].