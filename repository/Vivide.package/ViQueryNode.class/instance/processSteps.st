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

	interpreter := ViQueryInterpreter onNode: self.

	(Smalltalk at: #thisPane) in: [:oldThisPane |
		(Smalltalk at: #thisView) in: [:oldThisView |
			[
				Smalltalk at: #thisPane put: self pane.
				Smalltalk at: #thisView put: (self pane ifNotNil: [:p | p view]).
				interpreter upToNextProperties.
			] ensure: [
				Smalltalk at: #thisView put: oldThisView.
				Smalltalk at: #thisPane put: oldThisPane]]].
	
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