interactive tools
openScriptWith: someObjects
	"Idiomatic with String, BlockClosure, etc."

	self flag: #noStreamsSupport. "mt: #asList ..."
	^ VivideLight active ifNotNil: [:vivide |
		vivide
			openScript: self
			withObjects: someObjects asList "for robustness..."]