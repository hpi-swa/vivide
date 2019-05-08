private
processSteps
	"Creates child nodes with properties. Idempotent."

	| interpreter |
	self firstStep ifNil: [
		self assert: self referenceStack isEmpty.
		^ self].

	"Clear internal caches."
	self cachedResults: nil.
	children := Dictionary new.
	groups := #().

	interpreter := ViScriptInterpreter fromNode: self.
	interpreter upToExtraction.
	
	self cachedResults: interpreter objectsCache.
	
	"Prepare model. Create child nodes."
	groups := {self defaultGroup}.
	children
		at: self defaultGroup
		put: (interpreter createNodes
			do: [:node |
				node
					pane: self pane;
					depth: self depth + 1];
			yourself).