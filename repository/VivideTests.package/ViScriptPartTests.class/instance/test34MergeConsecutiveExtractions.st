tests
test34MergeConsecutiveExtractions
	"Consecutive extraction steps are merged by default. You can use a script property to control that."
	
	| script node |
	script := {
		[:num | #object -> num].
		[:num | #object -> (num * num)] -> {#mergeProperty -> false}.
		[:num | #object -> (num + 1)] -> {#mergeProperty -> false}.
	} asScript.
	node := script interpretScriptWith: #(2).

	self assert: (script steps allSatisfy: [:step | step isPropertyExtraction]).
	self assert: 1 equals: script maxPropertyCount.

	self assert: 1 equals: node nodes size.
	self assert: 2 equals: (node nodes first at: #object).

	self assert: 1 equals: node nodes first nodes size.
	self assert: 4 equals: (node nodes first nodes first at: #object).

	self assert: 1 equals: node nodes first nodes first nodes size.
	self assert: 5 equals: (node nodes first nodes first nodes first at: #object).