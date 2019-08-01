tests - connections and tuples
test10CycleWithOnePane

	| pane |
	pane := ViPane new.
	
	pane ~~> pane.
	self assert: pane hasLocalCycle.
	
	pane
		script: [:num | num + 1] asScript;
		objects: #(1 2 3).

	self
		assert: #(2 3 4) equals: pane allResults;
		assert: #(1 2 3) equals: pane objects.

	self forceGuiUpdate.

	self "Update input objects and result objects."
		assert: #(2 3 4) equals: pane objects;
		assert: #(3 4 5) equals: pane allResults.

	self forceGuiUpdate.

	self "No change."
		assert: #(2 3 4) equals: pane objects;
		assert: #(3 4 5) equals: pane allResults.