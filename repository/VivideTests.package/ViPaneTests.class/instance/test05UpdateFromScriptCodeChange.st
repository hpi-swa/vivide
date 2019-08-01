tests - updates and script selection
test05UpdateFromScriptCodeChange

	| pane script |
	pane := ViPane new.
	script := self addScript: [:num | num + 1]. "Needed for test-local notifiers."
	
	pane script: script; objects: #(1).
	self assert: #(2) equals: pane allResults.
	
	script sourceCode: '[:in :out | out add: 42]'.
	self forceGuiUpdate.
	self assert: #(42) equals: pane allResults.