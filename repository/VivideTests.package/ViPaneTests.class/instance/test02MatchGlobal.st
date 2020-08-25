tests - updates and script selection
test02MatchGlobal
	"Without input objects, there should be a global script selected. But keep the current script if the input objects get empty later."

	| script1 script2 pane |
	script1 := self addScript: { [#(1 2 3)] -> {#label -> #a} }.
	script2 := self addScript: { [:num | num + 1] -> {#label -> #b} }.
	pane := ViPane new.

	pane objects: #().
	self
		assert: script1 isGlobal;
		assert: script1 equals: pane script.
	
	pane objects: #(1).
	self
		deny: script2 isGlobal;
		assert: script2 equals: pane script.

	pane objects: #().
	self assert: script2 equals: pane script.