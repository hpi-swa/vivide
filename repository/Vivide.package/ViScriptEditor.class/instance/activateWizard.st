as yet unclassified
activateWizard
	"Ignore current source code and propose simple mapping."

	self script: '[:object | "Type code here..."]'.
	shouldPropose := true.
	self selectBlockStatements.