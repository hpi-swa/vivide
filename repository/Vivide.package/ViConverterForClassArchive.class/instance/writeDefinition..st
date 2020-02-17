write
writeDefinition: dict

	| selector |
	selector := self selectorForDefinition: dict.
			
	self
		compileMessage: selector
		sourceCode: selector, String cr,
			String tab, '<definition>', String cr,
			String cr,
			String tab, '^ ', dict compactStoreString
		classified: 'definitions'.