remote - evaluation
evaluateCode: someCode

	| answer receiver partial |
	self assert: ObjectGate waitForNextObject = someCode. "clear input cache"

	ObjectCache at: someCode ifPresent: [:cachedAnswer | 
		^ ObjectGate sendObject: cachedAnswer].

	"Find previous/shorter snippet."
	(someCode lastIndexOf: Character space) in: [:split |
		split = 0
			ifTrue: [partial := someCode]
			ifFalse: [
				partial := someCode copyFrom: 2 "no (" to: split -2 "no )".
				ObjectCache at: partial
					ifPresent: [:cachedAnswer |
						cachedAnswer first ~= #error
							ifFalse: [partial := 'Error signal: ', cachedAnswer second storeString]
							ifTrue: [
								receiver := cachedAnswer second.
								partial := 'self ', (someCode copyFrom: split+1 to: someCode size)]]
					ifAbsent: [partial := someCode]
				].
		].

	answer := [(Compiler evaluate: partial for: receiver logged: false) in: [:result |
		(self isOfPrimitiveType: result)
			ifTrue: [{#prim. result}]
			ifFalse: [{#ok. result}]]]
		on: Error do: [:ex | {#error. ex messageText asString}].
	
	ObjectCache at: someCode put: answer copy.
	
	"Do not send real objects."
	answer first == #ok
		ifTrue: [answer at: 2 put: answer second class name].

	ObjectGate sendObject: answer.