accessing
timeStamp

	(self stamp isNil or: [self stamp isEmpty])
		ifTrue: [^ nil].
	^ timeStamp ifNil: [timeStamp := TimeStamp fromString:
		(self stamp in: [:s |
			(s subStrings: ' ') ifEmpty: [''] ifNotEmpty: [:tokens |
				(tokens select: [:token | token first isDigit]) inject: '' into: [:nm :t | nm := nm, ' ', t]]])]