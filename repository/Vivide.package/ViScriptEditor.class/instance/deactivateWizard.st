actions - editing
deactivateWizard
	"Show actual source code but fall back if not present."
	
	| code |
	self object setProperty: #isNew toValue: nil.  
	
	code := self object definition sourceCode
		ifEmpty: ['[:in :out | "Type code here..."]'].

	edit margins: (4@0 corner: 0@7).

	shouldPropose := false.
	self script: code, String cr, '-> ', self propertiesToString.