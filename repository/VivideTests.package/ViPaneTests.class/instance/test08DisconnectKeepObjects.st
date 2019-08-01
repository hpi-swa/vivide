tests - connections, tuples, cycles
test08DisconnectKeepObjects

	| producer consumer c |
	producer := ViPane new.
	consumer := ViPane new.
	
	c := producer ~~> consumer.
	producer objects: #(1 2 3).
	self forceGuiUpdate.
	self assert: #(1 2 3) equals: consumer objects.

	c detach.
	self forceGuiUpdate.
	self
		assert: 0 equals: producer validOutputConnections size;
		assert: 0 equals: consumer validInputConnections size;
		assert: #(1 2 3) equals: consumer objects.