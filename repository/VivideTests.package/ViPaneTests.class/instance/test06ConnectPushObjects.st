tests - connections, tuples, cycles
test06ConnectPushObjects

	| producer consumer |
	producer := ViPane new.
	consumer := ViPane new.
	
	producer objects: #(1 2 3).
	self assert: #() equals: consumer objects.
	
	producer ~~> consumer.
	self assert: #() equals: consumer objects.

	self forceGuiUpdate.
	self assert: #(1 2 3) equals: consumer objects.