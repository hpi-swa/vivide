as yet unclassified
proposeScriptTemplate

	| code template |
	code := edit theText.
	template := self class templateProperty.
	


	"New pointer."
	scriptPointer := template key.
	script := template value, String cr, '-> {}'.