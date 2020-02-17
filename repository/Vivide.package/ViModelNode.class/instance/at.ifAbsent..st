accessing - data
at: key ifAbsent: aBlock
	"Special handling for block values. See #doesNotUnderstand:  too."

	^ (super at: key ifAbsent: aBlock) in: [:result |
		(key ~~ #object and: [result isBlock])
			ifTrue: [result cull: nil cull: false "No, we just get the value."]
			ifFalse: [result]]