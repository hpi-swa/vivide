tests - connections, tuples, cycles
test09DisconnectKeepTuples
	"We have to support gradual disconnect of multiple connections. So keep tuple input even if the intermediate connection setup would never produce tuples. -- Rely on auto updates and script selection."

	| producer1 producer2 consumer c1 c2 |
	producer1 := ViPane new.
	producer2 := ViPane new.	
	consumer := ViPane new.
	
	producer1 objects: #(1 2).
	producer2 objects: #(a b).

	c1 := producer1 ~~> consumer.
	c2 := producer2 ~~> consumer.
	self forceGuiUpdate.
	self
		assert: 1 equals: producer1 validOutputConnections size;
		assert: 1 equals: producer2 validOutputConnections size;
		assert: 2 equals: consumer validInputConnections size;		
		assert: #( (1 a) (1 b) (2 a) (2 b) ) equals: consumer objects.
	
	c1 detach.
	self forceGuiUpdate.
	self
		assert: 0 equals: producer1 validOutputConnections size;
		assert: 1 equals: producer2 validOutputConnections size;
		assert: 1 equals: consumer validInputConnections size;
		assert: #( (1 a) (1 b) (2 a) (2 b) ) equals: consumer objects.

	c2 detach.
	self forceGuiUpdate.
	self
		assert: 0 equals: producer1 validOutputConnections size;
		assert: 0 equals: producer2 validOutputConnections size;
		assert: 0 equals: consumer validInputConnections size;
		assert: #( (1 a) (1 b) (2 a) (2 b) ) equals: consumer objects.