tests - connections and tuples
test05MultipleConsumers

	| producer consumer1 consumer2 |
	producer := ViPane new.
	consumer1 := ViPane new.	
	consumer2 := ViPane new.

	producer ~~> consumer1.
	producer ~~> consumer2.

	producer objects: #(1 2).
	self forceGuiUpdate.

	self
		assert: #(1 2) equals: consumer1 objects;
		assert: #(1 2) equals: consumer2 objects.		