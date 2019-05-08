as yet unclassified
printOn: stream

	self depth = 0
		ifTrue: [
			stream nextPutAll: '_root_ ']
		ifFalse: [
			stream nextPut: $<.
			self object class printOn: stream.
			stream nextPut: $>; space].
		
	self childCount printOn: stream.
	stream space.
	self keysSortedSafely printOn: stream.