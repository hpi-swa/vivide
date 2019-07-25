tests
test14ResultsInfinite

	| script ui |
	script := {
		[:morph | morph submorphs].
		[:morph | #text -> morph printString].
		[:morph | morph owner].
		[:morph | #text -> morph printString].
		1
	} asScript.
	
	ui := Morph new addMorph: Morph new.
	
	sut
		script: script;
		objects: {ui}.
	self assert: 2 equals: sut results size.