processing
process: someObjects within: aContext
	"Be sure that a collection of objects is returned."
	
	| in out |
	in := self inputCount.
	out := self outputCount.
		
	^ definition wantsAllObjectsAtOnce
		ifTrue: [(definition block cull: someObjects cull: aContext) in: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [result]
				ifFalse: [{result}]]]
		ifFalse: [Array streamContents: [:stream |
			someObjects do: [:obj | 
				(in > 1 "offer context for in=1 only"
					ifFalse: [definition block cull: obj cull: aContext]
					ifTrue: [definition block valueWithArguments: obj]) in: [:result |
				out > 1
					ifFalse: [(ViQueryInterpreter isCollection: result)
						ifTrue: [stream nextPutAll: result]
						ifFalse: [stream nextPut: result]]
					ifTrue: [
						stream nextPutAll: (ViQueryInterpreter productOfCollections: result)
						
						]
						
				]]]]