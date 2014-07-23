memento - data
hasUnacceptedChanges

	^ self object isTerminated not and: [Processor activeProcess ~~ self object]