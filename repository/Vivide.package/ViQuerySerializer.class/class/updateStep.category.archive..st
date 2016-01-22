support
updateStep: step category: category archive: aClass

	| archive selector |
	archive := aClass theMetaClass.
	selector := #step, (step id copyWithout: $-).
			
	self
		archive: archive
		code: selector, String cr,
			String tab, '<step>', String cr,
			String cr,
			String tab, '^ ', step asDictionary compactStoreString
		under: category, 'steps'.
		
	^ selector