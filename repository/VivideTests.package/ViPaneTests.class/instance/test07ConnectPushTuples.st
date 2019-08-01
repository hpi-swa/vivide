tests - connections and tuples
test07ConnectPushTuples

	| producer1 producer2 consumer |
	producer1 := ViPane new.
	producer2 := ViPane new.	
	consumer := ViPane new.
	
	producer1 objects: #(1 2).
	producer2 objects: #(a b).

	producer1 ~~> consumer.
	self forceGuiUpdate.
	self assert: #(1 2) equals: consumer objects.

	producer2 ~~> consumer.
	self forceGuiUpdate.
	self assert: #( (1 a) (1 b) (2 a) (2 b) ) equals: consumer objects.