support
updateCommand: command category: category archive: aClass

	| archive selector |
	archive := aClass theMetaClass.
	selector := #command, (command id copyWithout: $-).
			
	self
		archive: archive
		code: selector, String cr,
			String tab, '<command>', String cr,
			String cr,
			String tab, '^ ', command asDictionary storeString
		under: category, 'commands'.
		
	^ selector