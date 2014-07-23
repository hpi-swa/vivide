accessing
selectedText

	self selection ifNil: [^ nil].

	^ self text
		copyFrom: self selection first
		to: self selection last