as yet unclassified
asDictionary

	| body |
	body := (self source asString in: [:src |
		src copyFrom: (src indexOf: $^) to: src size]).
	^ Compiler evaluate: body