testing
isHomogeneous
	"Only one chain of properties?"
	
	| lastProperty |
	lastProperty := nil.
	self allPropertyStepsDo: [:p |
		(lastProperty isNil or: [lastProperty next == p])
			ifTrue: [lastProperty := p]
			ifFalse: [^ false]].
	^ true