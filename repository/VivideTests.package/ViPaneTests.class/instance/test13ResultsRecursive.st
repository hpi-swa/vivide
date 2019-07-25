tests
test13ResultsRecursive

	| script ui |
	script := {
		[:morph | #text -> morph printString].
		[:morph | morph submorphs].
		1
	} asScript.
	
	ui := Morph new addAllMorphs: {
		Morph new addAllMorphs: {Morph new}.
		Morph new.
		Morph new.
		Morph new addAllMorphs: {Morph new. Morph new}}.
	
	sut
		script: script;
		objects: {ui}.
	self assert: ui allMorphs size equals: sut results size.