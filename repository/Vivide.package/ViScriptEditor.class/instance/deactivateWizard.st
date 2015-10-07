actions - editing
deactivateWizard
	"Show actual source code but fall back if not present."
	
	| code |
	self object setProperty: #isNew toValue: false.  
	
	code := self object definition sourceCode
		ifEmpty: ['[:in :out | "Type code here..."]'].

	shouldPropose := false.
	self script: code, String cr, '-> ', self propertiesToString.