write
writeProfile: dict

	| selector |
	selector := self selectorForProfile: dict.
			
	self
		compileMessage: selector
		sourceCode: selector, String cr,
			String tab, '<profile>', String cr,
			String cr,
			String tab, '^ ', dict compactStoreString
		classified: 'profile'.