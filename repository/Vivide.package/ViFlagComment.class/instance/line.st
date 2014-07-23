accessing - convenience
line

	| lineBreaks|
	lineBreaks := 0.

	self reference sourceString withSqueakLineEndings withIndexDo: [:char :idx |
		(char == Character cr or: [char == Character lf])
			ifTrue: [lineBreaks := lineBreaks + 1].

		idx >= self interval first
			ifTrue: [^ lineBreaks + 1]].
	
	"Just in case..."
	^ lineBreaks + 1