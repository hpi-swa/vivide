tests - multiple
test01Context

	self setUpWindow.

	script := {
		[:num | num * num].
		[:num | num + num].
	} asScript.

	window objects: { #(1 2 3) }, script steps.
	editor := window artifactContainers second.
	
	"Script editors keep track of all objects around them."
	self assert: (editor context hasEqualElements: window objects).
	
	"Script editors specifically track the script steps around them."
	self assert: (editor allSteps hasEqualElements: script steps).