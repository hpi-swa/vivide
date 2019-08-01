tests - connections and tuples
test01ConnectDefault
	"Test the default behavior of pane connections and minimal pane setup."
	
	| producer consumer |
	producer := ViPane new.
	consumer := ViPane new.
	
	self
		assert: 0 equals: producer validOutputConnections size;
		assert: 0 equals: consumer validInputConnections size;
		assert: #() equals: producer allResults;
		assert: #() equals: consumer objects.
		
	producer ~~> consumer. "Default means #automatic."
	self
		assert: 1 equals: producer validOutputConnections size;
		assert: 1 equals: consumer validInputConnections size;
		assert: #() equals: producer allResults;
		assert: #() equals: consumer objects.

	producer objects: #(1 2 3). "Identity script automatically used."
	self forceGuiUpdate.
	self
		assert: #(1 2 3) equals: producer allResults;
		assert: #(1 2 3) equals: consumer objects.	

	producer script: [:num | num * num] asScript.
	self forceGuiUpdate.
	self
		assert: #(1 4 9) equals: producer allResults;
		assert: #(1 4 9) equals: consumer objects.		