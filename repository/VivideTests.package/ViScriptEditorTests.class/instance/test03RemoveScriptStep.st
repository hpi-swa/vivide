tests - multiple
test03RemoveScriptStep

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
	two removeStep.
	self assert: two owner isNil. "Editor not visible anymore."
	self assert: 2 equals: script steps size. "Step not reachable anymore."
	self assert: 1 equals: two thisStep steps size. "Step not reachable anymore."
	self deny: two thisStep isRegistered. "Step not even registered anymore."
	
	"Remove first step."
	self assert: one thisStep == script.
	one removeStep.
	self assert: one owner isNil. "Editor not visible anymore."
	self assert: 1 equals: script steps size. "Step not reachable anymore."
	self assert: #one equals: script id. "The one we just removed."
	self deny: one thisStep isRegistered. "Step not even registered anymore."
	
	"Cannot remove remaining step."
	three removeStep.
	self deny: three owner isNil. "Editor not visible anymore."
	self assert: 2 equals: window objects size. "Input + Step"
	self assert: three thisStep isRegistered. "Step remains registered."