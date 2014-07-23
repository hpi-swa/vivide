tests
test16EmptyLabel

	step label: nil.
	editor clear.
	self deny: editor hasUnacceptedChanges.