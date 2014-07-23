tests
test08ChangeReference

	| q |
	q := ViQueryReferenceStep new
		organization: organization.
	sut notify: self ofQueryChangesOfItem: ViQueryChangeNotifier stepKind change: ModifiedEvent changeKind using: #setAnswer:.
	q reference: step.
	self
		assert: answer isModified;
		assert: answer item == q;
		assert: nil equals: answer oldReference;
		assert: q reference == answer reference.