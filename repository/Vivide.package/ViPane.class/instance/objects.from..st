accessing - convenience
objects: someObjects from: aPane

	self assert: self tupleSize > 0. "Must not be called otherwise."
	
	aPane forceUpdate == #always
		ifTrue: [forceUpdate := #always].
	(self canUpdate: aPane lastUpdateId)
		ifFalse: [^ self "abort the cycle"].

	"If we have multiple inputs, defer my updates because those update inputs may update, too."
	self flag: #tradeoff. "mt: You cannot construct Fibonacci automaton with deferred update... but you need it to build a system browser."
	self triggerDeferredObjects.