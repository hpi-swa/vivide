accessing - convenience
appropriateQueries
	"Current query is most appropriate if not nil and still matching the type filter. Prepend it; then append others."
	
	| baseClasses tuples check |
	self flag: #noStreamsSupport.
	
	tuples := self tupleSizeDynamic.
	baseClasses := self objects
		ifEmpty: [Array new: (tuples max: 1) withAll: Object]
		ifNotEmpty: [:o | ViScriptDefinition
			collectBaseClassesForContext: o
			withTuples: tuples > 1].
	
	self flag: #refactor. "mt: Find another way to get class for proxy"
	baseClasses first name == 'ViProxyObject' ifTrue: [baseClasses := {Object}].
		
	(self objects notEmpty and: [tuples <= 1])
		ifTrue: [baseClasses := {baseClasses}].

	"Tuple size must match and types as well. No support for tuples-in-tuples."
	check := [:step | | i b |
		i := 0.
		b := step baseClass asList.
		self objects isEmpty or: [b size = (tuples max: 1) and: [
			baseClasses allSatisfy: [:classes |
				i := i + 1.
				classes includes: (b at: i)]]]].

	^ Array streamContents: [:strm |
		"1) Keep the current query if it still matches."
		self currentQuery ifNotNil: [:step |
			(check value: step) ifTrue: [strm nextPut: step]].
		"2) Add all recent queries if they still match."
		strm nextPutAll: ((self recentQueries copyWithout: self currentQuery) select: check).
		"3) Take all other queries if they have labels and match or are global."
		strm nextPutAll: (
			self queries value select: [:step | (step isReference not and: [step nextLabel notNil]) and: [
				(step isGlobal and: [self objects isEmpty]) or: [(step isGlobal not and: [self objects notEmpty]) and: [check value: step]]]])
	]