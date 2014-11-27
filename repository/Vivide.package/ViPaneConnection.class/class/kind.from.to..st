as yet unclassified
kind: symbol from: source to: target

	^ (self subclasses detect: [:cls | cls connectionKind = symbol])
		from: source
		to: target