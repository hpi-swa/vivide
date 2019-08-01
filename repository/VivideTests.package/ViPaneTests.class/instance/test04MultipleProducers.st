tests - connections and tuples
test04MultipleProducers
	"Create tuples from multiple input connections."

	| producer1 producer2 consumer |
	producer1 := ViPane new.
	producer2 := ViPane new.	
	consumer := ViPane new.

	producer1 ~~> consumer.
	producer2 ~~> consumer.

	producer1 objects: #(1 2).
	producer2 objects: #(a b c).
	self forceGuiUpdate.

	self
		assert: #( (1 a) (1 b) (1 c) (2 a) (2 b) (2 c) )
		equals: consumer objects.