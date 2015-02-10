*vivide-artifacts-support
detect: aBlock

	self
		detect: aBlock
		ifFound: [:object | ^ object]
		ifNone: [].
	^ nil