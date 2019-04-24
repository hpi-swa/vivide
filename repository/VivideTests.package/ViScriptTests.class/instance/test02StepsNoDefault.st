tests - enumeration
test02StepsNoDefault
	"Only the script interpreter inserts default property extraction."

	| script |
	script := {
		[:num | num + num].
		[:num | num * num].	
	} asScript.

	self
		assert: 2 equals: script steps size;
		deny: script steps last isPropertyExtraction.