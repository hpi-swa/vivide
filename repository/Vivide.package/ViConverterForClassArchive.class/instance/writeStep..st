write
writeStep: dict

	| selector |
	selector := self selectorForStep: dict.
			
	self
		compileMessage: selector
		sourceCode: selector, String cr,
			String tab, '<step>', String cr,
			String cr,
			String tab, '^ ', dict compactStoreString
		classified: 'steps'.