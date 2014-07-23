support
updateDefinition: def inQueryArchive: aClass

	| category archive selector |
	archive := aClass class.
	category := def category
		ifNil: ['']
		ifNotNil: [:c | '*', c, '-'].
	selector := #def, (def id copyWithout: $-).
			
	self
		archive: archive
		code: selector, String cr,
			String tab, '<definition>', String cr,
			String cr,
			String tab, '^ ', def asDictionary storeString
		under: category, 'definitions'.
		
	^ selector