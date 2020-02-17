tests - connections, tuples, cycles
test02ConnectAllResults

	| producer consumer |
	producer := ViPane new.
	consumer := ViPane new.
			
	producer ~~~ #auto ~~> consumer.
	producer
		script: [:num | num * num] asScript;
		objects: #(1 2 3).
	self forceGuiUpdate.

	self
		assert: #(1 4 9) equals: producer allResults;
		assert: #(1 4 9) equals: consumer objects.		