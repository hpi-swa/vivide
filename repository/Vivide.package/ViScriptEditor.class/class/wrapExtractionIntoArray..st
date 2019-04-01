support
wrapExtractionIntoArray: code
	"Insert missing curly brackets for property steps."

	| inner node |
	inner := code withPunctuationTrimmed.
	node := RBParser parseExpression: inner.
	self assert: node isBlock.
	node body statements last "Not first to allow temps." isArray ifFalse: [
		"We need to wrap it into an array."
		inner := '{1}\{ {2} \}{3}' format: {
			node source copyFrom: 1 to: node body start - 1.
			node source copyFrom: node body start to: node body stop.
			node source copyFrom: node body stop + 1 to: node source size
		}.
	].

	^ inner.