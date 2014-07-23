as yet unclassified
showLastException

	(self errorBtn valueOfProperty: #error) ifNotNil: [:ex |
		ex explore].