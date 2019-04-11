tests - multiple
test05CloseEditor
	"The actual close action should not delete the step but change the other steps' order."
	
	| one two three |
	script := {
		[:num | num * 2] -> { #id -> #one }.
		[:num | num + num] -> { #id -> #two }.
		[:num | num + 2] -> { #id -> #three }.
	} asScript.
	self setUpWindow.

	self assert: (script steps hasEqualElements: window objects allButFirst "input").
	
	one := window artifactContainers second.
	two := window artifactContainers third.
	three := window artifactContainers fourth.
	
	"Remove middle step."
	two close.
	self assert: two owner isNil. "Editor not visible anymore."
	self assert: 2 equals: script steps size. "Step not reachable anymore."
	
	self assert: two thisStep isRegistered. "BUT step remains registered."
	self assert: 2 equals: two thisStep steps size. "BUT step remains a script of its own."