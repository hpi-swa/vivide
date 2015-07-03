running
setUp

	super setUp.
	
	sut := ViQueryChangeNotifier new.
	step := [:cls | cls theNonMetaClass methods] asScript.

	organization := step organization.
	definition := step definition.

	organization notifier: sut.