accessing - many
steps

	self flag: #rename. "mt: #localSteps ?"
	^ Array streamContents: [:strm |
		self stepsDo: [:step | strm nextPut: step]]