tests - single
test07StableScriptPointer

	| script old |
	script := [:num | num * 2] asScript.
	editor object: script.

	editor goUp.
	old := editor fullSourceCodeInterval.	
	
	editor clear.
	self assert: old equals: editor fullSourceCodeInterval.