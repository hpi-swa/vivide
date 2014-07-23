running
setUp

	super setUp.
	
	step := ViQueryStep transform: '[:numbers | numbers select: [:number | number even]]'.
	definition := step definition.
	
	organization := ViQueryOrganizer new
		notifier: ViQueryChangeNotifier new.
	step organization: organization.
	definition organization: organization.
	
	step label: 'ViQueryStepEditorTests'.
	step id: #ViQueryStepEditorTests.
	definition id: #ViQueryStepEditorTests.
	
	editor object: step.