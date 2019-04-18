tests - categories
test02ChangeIdKeepCategory

	| step |
	step := { [:ea | ea * ea] -> { #id -> #one } } asScript.
	organization  := step organization.
	
	organization classify: step under: #test.
	step id: #two. "We have to use step protocol because #categoryOfElement: works through the same protocol."
		
	self
		assert: step equals: (organization stepById: #two);
		assert: #test equals: (organization categoryOfElement: step).