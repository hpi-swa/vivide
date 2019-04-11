tests - multiple
test01Context

	script := {
		[:num | num * num].
		[:num | num + num].
	} asScript.

	self setUpWindow: #(1 2 3).
	
	"Script editors keep track of all objects around them."
	self assert: (editor context hasEqualElements: window objects).
	
	"Script editors specifically track the script steps around them."
	self assert: (editor allSteps hasEqualElements: script steps).