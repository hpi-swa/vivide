as yet unclassified
activateWizard
	"Ignore current source code and propose simple mapping."

	shouldPropose := true.
	self script: '[:object | "Type code here..."]'.
	self selectBlockStatements.