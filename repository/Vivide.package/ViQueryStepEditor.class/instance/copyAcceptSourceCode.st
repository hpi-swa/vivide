memento - data
copyAcceptSourceCode

	self currentSourceCode in: [:newCode |
		self
			useNewCode; "Copy definition."
			currentSourceCode: newCode;
			acceptSourceCode].