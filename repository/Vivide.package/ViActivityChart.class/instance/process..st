updating
process: node

	node firstNode ifNotNil: [:n |
		self graphs first
			removeFirst;
			addLast: (n at: #value ifAbsent: [0]).
		self updateValues].