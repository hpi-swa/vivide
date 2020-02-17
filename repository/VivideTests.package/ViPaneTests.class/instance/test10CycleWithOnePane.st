tests - connections, tuples, cycles
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
		
	"Set new input from the outside."

	self flag: #improve.
	ActiveEvent := UUID new. "Requried for second cycle detection..."

	pane objects: #(10 11 12).
	self forceGuiUpdate.
	self assert: #(11 12 13) equals: pane objects.