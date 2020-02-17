tests - list and script conversion
test06ListAsScript

	self assert: {
		[:num | num + 10].
		[:num | num * num].
	} asScript isScript.