tests
test14NotificationsSkipNestedUpdates
	"If your parent updates, do not update because you will be invalid anyway."
	
	| script view env |
	Smalltalk at: #outer put: 0.
	Smalltalk at: #inner put: 0.
	
	script := {
		[:category | 
			Smalltalk at: #outer put: (Smalltalk at: #outer) + 1.
			SystemOrganization listAtCategoryNamed: category].
		[:className | Smalltalk classNamed: className].
		[:class | #text -> class] -> {#notifier -> ViSystemChangeNotifier}.
		[:class | 
			Smalltalk at: #inner put: (Smalltalk at: #inner) + 1.
			class methodDict values] -> {#notifier -> ViSystemChangeNotifier}.
	} asScript.
	
	env := ViPane new.
	view := script updateView: nil forEnvironment: env.
		
	"Prepare view to update."
	sut firstStep: (ViQueryStep use: {self class category} in: script).
	view model: sut.
	view currentVisibleView expandAllTopLevelNodes.
	
	self assert: 1 equals: (Smalltalk at: #outer).
	self
		assert: (SystemOrganization listAtCategoryNamed: self class category) size
		equals: (Smalltalk at: #inner).

	Smalltalk at: #outer put: 0.
	Smalltalk at: #inner put: 0.
	
	"Two updates at once."
	self class compile: 'shouldNotSeeMe ^ true'.
	self simulateSystemChangeAndCallbacks.

	self assert: 1 equals: (Smalltalk at: #outer).
	self
		assert: (SystemOrganization listAtCategoryNamed: self class category) size
		equals: (Smalltalk at: #inner).

	Smalltalk removeKey: #outer; removeKey: #inner.