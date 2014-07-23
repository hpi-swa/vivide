accessing - private
outputKind: class

	class
		ifNil: [outBtn hide]
		ifNotNil: [:cls |
			outBtn show.
			self updateButton: outBtn label: cls name].