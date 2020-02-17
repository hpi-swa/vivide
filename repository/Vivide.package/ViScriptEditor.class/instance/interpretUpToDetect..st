support - debugging
interpretUpToDetect: block
	"Interprets the entire visible script with the objects on top as input."
	
	| input |
	input := Array streamContents: [:stream |
		self context detect: [:obj | obj isScript
				ifTrue: [true "stop here"]
				ifFalse: [stream nextPutAll: obj asList. false]]].
	
	self checkAllStepsConnected ifFalse: [^ nil].
		
	^ (ViScriptInterpreter
		on: self allSteps first
		using: input)
			upToDetect: block;
			yourself