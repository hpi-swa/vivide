accessing
ui

	^ ui ifNil: [ui := ViQueryStepEditorUi new]