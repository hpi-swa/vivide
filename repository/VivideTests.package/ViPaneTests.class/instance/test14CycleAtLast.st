tests - connections, tuples, cycles
test14CycleAtLast
	"First, there was no cycle. But then..."

	| pane1 pane2 pane3 |
	pane1 := ViPane new script: [:num | num] asScript; yourself.
	pane2 := ViPane new script: [:num | num + num] asScript; yourself.
	pane3 := ViPane new script: [:num | num * num] asScript; yourself.

	pane1 ~~> pane2.
	pane2 ~~> pane3.
	
	pane1 objects: #(1 2 3).
	self forceGuiUpdate.
	self
		assert: #(1 2 3) equals: pane2 objects;
		assert: #(2 4 6) equals: pane2 allResults;
		assert: #(2 4 6) equals: pane3 objects;
		assert: #(4 16 36) equals: pane3 allResults.

	self
		assert: #always equals: pane1 forceUpdate;
		assert: #always equals: pane2 forceUpdate;
		assert: #always equals: pane3 forceUpdate.
		
	pane3 ~~> pane3.

	self flag: #improve.
	ActiveEvent := UUID new. "Requried for second cycle detection..."

	pane1 objects: #(1 2 3).	
	self forceGuiUpdate.
	self
		assert: #(1 2 3) equals: pane2 objects;
		assert: #(2 4 6) equals: pane2 allResults;
		assert: #( (2 4) (2 16) (2 36) (4 4) (4 16) (4 36) (6 4) (6 16) (6 36) ) equals: pane3 objects;
		assert: #( (2 4) (2 16) (2 36) (4 4) (4 16) (4 36) (6 4) (6 16) (6 36) ) equals: pane3 allResults.

	self
		assert: #once equals: pane1 forceUpdate;
		assert: #never equals: pane2 forceUpdate;
		assert: #never equals: pane3 forceUpdate.