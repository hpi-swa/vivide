as yet unclassified
detect: aBlock

	self
		detect: aBlock
		ifFound: [:object | ^ object]
		ifNone: [].
	^ nil