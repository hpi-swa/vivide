write
writeCommand: dict

	| selector |
	selector := self selectorForCommand: dict.
			
	self
		compileMessage: selector
		sourceCode: selector, String cr,
			String tab, '<command>', String cr,
			String cr,
			String tab, '^ ', dict compactStoreString
		classified: 'commands'.