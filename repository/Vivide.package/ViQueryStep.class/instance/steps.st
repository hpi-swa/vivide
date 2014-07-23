accessing - convenience
steps

	^ Array streamContents: [:strm |
		self stepsDo: [:step | strm nextPut: step]]