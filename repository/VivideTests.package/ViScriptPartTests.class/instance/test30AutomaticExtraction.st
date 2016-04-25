tests
test30AutomaticExtraction
	"If the user does not extract properties in the script part, the script interpreter has to do it automatically."
	
	| script node |
	script := { [:num | num * num] -> {#isProperty -> true} } asScript.
	node := script interpretScriptWith: #(1 2 3 4).
	
	self assert: script isPropertyExtraction.
	self assert: #(1 4 9 16) equals: node objects.
	self assert: #(object '1_object') = node nodes first properties asArray.