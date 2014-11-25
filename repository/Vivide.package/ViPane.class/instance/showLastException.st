errors
showLastException

	(self errorBtn valueOfProperty: #error) ifNotNil: [:ex |
		ex explore].