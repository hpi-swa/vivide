updating - kernel
objects: someObjects from: aPane

	self assert: self tupleSize > 0. "Must not be called otherwise."
	
	forceUpdate ~= #once "Do not propagate or overwrite #once but everything else."
		ifTrue: [forceUpdate := aPane forceUpdate = #once ifTrue: [#never] ifFalse: [aPane forceUpdate ]].
	(self canUpdate: aPane lastUpdateId)
		ifFalse: [^ self "abort the cycle"].

	"If we have multiple inputs, defer my updates because those update inputs may update, too."
	self flag: #tradeoff. "mt: You cannot construct Fibonacci automaton with deferred update... but you need it to build a system browser."
	self triggerDeferredObjects.