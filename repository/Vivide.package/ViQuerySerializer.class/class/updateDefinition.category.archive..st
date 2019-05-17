support
updateDefinition: def category: category archive: aClass

	| archive selector |
	archive := aClass theMetaClass.
	selector := #def, (def id copyWithout: $-).
			
	self
		archive: archive
		code: selector, String cr,
			String tab, '<definition>', String cr,
			String cr,
			String tab, '^ ', def asDictionary compactStoreString
		under: category.
		
	^ selector