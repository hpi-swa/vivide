private - serialize
serializeProfile

	self assert: profile notNil.

	self
		setOrganizer: profile organization
		archive: profile archive.   	

	self class
		archive: archive
		code: 'id', String cr, String tab, '^ ', profile id storeString
		under: 'profile'.

	self class
		archive: archive
		code: 'label', String cr, String tab, '^ ', profile label storeString
		under: 'profile'.

	self class
		archive: archive
		code: 'defaultView', String cr, String tab, '^ ', profile defaultView storeString
		under: 'profile'.