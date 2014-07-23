instance creation
open
	"Open a new dialog filled with contents to send a report.
	
	ViFeedbackReportDialog open"
	
	^ Cursor wait showWhile: [self new open]