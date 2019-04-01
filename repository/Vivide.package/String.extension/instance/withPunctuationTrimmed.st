*vivide
withPunctuationTrimmed
	"Removes leading and trailing blanks and punctuation characters. Based on the implementation of #withBlanksTrimmed."

	| first last nonSep |
	self flag: #performance. "mt: The creation of new character sets is slow."
	nonSep := (CharacterSet separators, (CharacterSet withAll: ';.')) complement.
	
	first := self indexOfAnyOf: nonSep startingAt: 1.
	first = 0 ifTrue: [ ^'' ].  "no non-separator character"
	last := self lastIndexOfAnyOf: nonSep startingAt: self size ifAbsent: [self size].
	(first = 1 and: [ last = self size ]) ifTrue: [ ^self copy ].
	^self
		copyFrom: first
		to: last