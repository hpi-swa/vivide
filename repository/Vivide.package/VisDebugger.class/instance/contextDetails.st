as yet unclassified
contextDetails

	^ self receiverDetails in: [:spec |
		spec first key at: 1 put: #contextDetails.
		spec]