accessing - private
inputKind: class

	class
		ifNil: [inBtn hide]
		ifNotNil: [:cls |
			inBtn show.
			self updateButton: inBtn label: cls name].