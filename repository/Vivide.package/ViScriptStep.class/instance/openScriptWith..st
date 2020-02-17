interactive tools
openScriptWith: someObjects
	"Idiomatic with String, BlockClosure, etc."

	self flag: #noStreamsSupport. "mt: #asList ..."
	^ VivideLight active ifNotNil: [:vivide |
		self id = #artifacts
			ifTrue: [vivide openArtifacts: someObjects asList "for robustness"]
			ifFalse: [vivide openScript: self withObjects: someObjects asList "for robustness..."]]