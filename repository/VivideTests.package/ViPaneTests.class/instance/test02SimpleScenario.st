tests - construction
test02SimpleScenario

	| pane script input |
	script := ([:num | num * num] -> { #view -> ViTreeView }) asScript.
	input := #(1 2 3).
	pane := ViPane new script: script; objects: input; yourself.

	self
		assert: script equals: pane script;
		assert: input equals: pane objects;
		assert: ViTreeView equals: pane view class;
		assert: #(1 4 9) equals: pane allResults asArray.