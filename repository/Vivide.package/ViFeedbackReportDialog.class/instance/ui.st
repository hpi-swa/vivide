accessing
ui

	^ ui ifNil: [ui := ViFeedbackReportDialogUi new]