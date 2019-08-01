tests - connections, tuples, cycles
test07ConnectPushTuples

	| producer1 producer2 consumer |
	producer1 := ViPane new.
	producer2 := ViPane new.	
	consumer := ViPane new.
	
	producer1 ~~> consumer.
	producer1 objects: #(1 2).

	self deny: producer1 hasLocalCycle.
	self assert: #() equals: consumer objects.
	self forceGuiUpdate.
	self assert: #(1 2) equals: consumer objects.

	producer2 ~~> consumer.
	producer2 objects: #(a b).

	self deny: producer2 hasLocalCycle.
	self assert: #(1 2) equals: consumer objects.
	self forceGuiUpdate.
	self assert: #( (1 a) (1 b) (2 a) (2 b) ) equals: consumer objects.