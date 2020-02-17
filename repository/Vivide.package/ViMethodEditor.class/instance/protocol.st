accessing
protocol

	^ self artifact ifNotNil: [:a |
		ViProtocol
			named: a protocol
			inClass: a theClass].