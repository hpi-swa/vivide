tests - single
test01VisibleSourceCode
	"How does the script present itself in the editor?"
	
	script := [:morph | morph color] asScript.
	editor object: script.

	self
		assert: '[:morph | morph color]'
		equals: editor visibleSourceCode.