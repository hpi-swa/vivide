as yet unclassified
deactivateWizard
	"Show actual source code but fall back if not present."
	
	| code |
	code := self object definition sourceCode
		ifEmpty: ['[:in :out | "Type code here..."]'].

	self script: code, String cr, '-> ', self propertiesToString.
	shouldPropose := false.