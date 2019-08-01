tests - connections, tuples, cycles
test13NoDoubleEmpty
	"If the previous notification of a view did not contain any objects, skip an additional push of a empty collection."
	
	| producer consumer |
	producer := ViPane new.
	consumer := ViPane new.
	
	producer ~~~ #selection ~~> consumer.

	producer notifyChangedSelection: #(1 2 3 4).
	self forceGuiUpdate.
	self assert: #(1 2 3 4) equals: consumer objects.

	producer notifyChangedSelection: #().
	self forceGuiUpdate.
	self assert: #() equals: consumer objects.

	consumer objects: #(1 2 3 4).
	producer notifyChangedSelection: #(). "Double empty!? Nope."
	self forceGuiUpdate.
	self assert: #(1 2 3 4) equals: consumer objects. "Still previous input."