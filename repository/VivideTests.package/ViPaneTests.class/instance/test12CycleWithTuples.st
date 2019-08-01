tests - connections, tuples, cycles
test12CycleWithTuples

	| producer1 producer2 consumer |
	producer1 := ViPane new script: [:num | num * num] asScript; yourself.
	producer2 := ViPane new script: [:offset | offset] asScript; yourself.
	consumer := ViPane new script: [:a :b | a + b] asScript; yourself.
	
	producer1 ~~> consumer.
	producer2 ~~> consumer.
	consumer ~~> producer1.
	
	self
		assert: producer1 hasLocalCycle;
		assert: producer2 hasLocalCycle;
		assert: consumer hasLocalCycle.
	
	producer2 objects: #(5).
	
	self flag: #improve.
	ActiveEvent := UUID new. "Requried for second cycle detection..."

	producer1 objects: #(1 2).	
	self forceGuiUpdate.
	
	self
		assert: #(5) equals: producer2 allResults;
		assert: #(6 9) equals: consumer allResults.
	
	"Producer1 got the chance to update again."
	self flag: #discuss. "mt: See forceUpdate := #once. Not sure whether this is useful for all kinds of cycles or just for self cycles. See #test10CycleWithOnePane."
	self
		assert: #(6 9) equals: producer1 objects;
		assert: #(36 81) equals: producer1 allResults.