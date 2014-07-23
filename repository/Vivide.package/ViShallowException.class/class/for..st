as yet unclassified
for: anException

	^ self new
		stack: anException signalerContext stack
		description: anException description