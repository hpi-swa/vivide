tests - multiple
test04CloseWindow
	"Full close does not change script steps."
	
	script := {
		[:num | num * 2].
		[:num | num + num].
		[:num | num + 2].
	} asScript.
	self setUpWindow.
	
	window close.
	self assert: 3 equals: script steps size.