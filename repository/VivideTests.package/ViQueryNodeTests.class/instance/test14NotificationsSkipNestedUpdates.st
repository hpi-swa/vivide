tests
test14NotificationsSkipNestedUpdates
	"If your parent updates, do not update because you will be invalid anyway."
	
	| script view env |
	Smalltalk globals at: #outer put: 0.
	Smalltalk globals at: #inner put: 0.
	
	script := {
		[:category | 
			Smalltalk globals at: #outer put: (Smalltalk globals at: #outer) + 1.
			SystemOrganization listAtCategoryNamed: category].
		[:className | Smalltalk classNamed: className].
		[:class | #text -> class] -> {#notifier -> ViSystemChangeNotifier}.
		[:class | 
			Smalltalk globals at: #inner put: (Smalltalk globals at: #inner) + 1.
			class methodDict values] -> {#notifier -> ViSystemChangeNotifier}.
	} asScript.
	
	env := ViPane new.
	view := script updateView: nil forEnvironment: env.
	view setUp: script.
	
	"Prepare view to update."
	sut firstStep: (ViQueryStep use: {self class category} in: script).
	view process: sut.
	view currentVisibleView expandAllTopLevelNodes.
	
	self assert: 1 equals: (Smalltalk globals at: #outer).
	self
		assert: (SystemOrganization listAtCategoryNamed: self class category) size
		equals: (Smalltalk globals at: #inner).

	Smalltalk globals at: #outer put: 0.
	Smalltalk globals at: #inner put: 0.
	
	"Two updates at once."
	self class compile: 'shouldNotSeeMe ^ true'.
	self simulateSystemChangeAndCallbacks.

	self assert: 1 equals: (Smalltalk globals at: #outer).
	self
		assert: (SystemOrganization listAtCategoryNamed: self class category) size
		equals: (Smalltalk globals at: #inner).

	Smalltalk globals removeKey: #outer; removeKey: #inner.