actions
openIt

	self lineSelectAndEmptyCheck: [^ self].
	
	self selectedSymbol ifNotNil: [:symbol |
		^ morph editView activateSymbol: symbol].
	self selectedSelector ifNotNil: [:symbol |
		^ morph editView activateSymbol: symbol].

	"self evaluateSelection ifNotNil: [:result |
		((result isKindOf: FakeClassPool) or: [result == #failedDoit])
			ifFalse: [^ model activateObject: result]]."
	
	^ morph flash