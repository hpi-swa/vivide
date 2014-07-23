as yet unclassified
doSystemCategory: symbol

	^((symbol findTokens: '-')
		inject: ''
		into: [:nm :token | nm, token asLowercase, '.'])
			allButLast.