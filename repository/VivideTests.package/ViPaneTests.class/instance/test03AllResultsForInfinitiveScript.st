tests - results
test03AllResultsForInfinitiveScript
	"Check whether #allResults are approximated even for infinite scripts. That is, models of infinite depth."
	
	| pane script results |
	script := {
		[:num | #text -> num asString].	
		[:num | num - 1].
		1
	} asScript.
	pane := ViPane new
		script: script;
		objects: #(4).
	results := pane allResults. "Must return!"
	
	self assert: results notEmpty.
	results overlappingPairsDo: [:a :b | self assert: a > b].