private
normalizeFrequencies
	"Ensure that the minimal frequency is always 1."

	| offset |
	self isEmpty ifTrue: [^ self].
	offset := self frequencies values min.
	offset == 1 ifTrue: [^ self].
	self frequencies keysAndValuesDo: [:obj :frequency |
		self frequencies at: obj put: frequency - offset + 1].