as yet unclassified
serializeProfile

	self assert: profile notNil.

	self
		setOrganizer: profile organization
		archive: profile archive.   	

	self
		archiveCode: 'id', String cr, String tab, '^ ', profile id storeString
		under: 'profile'.

	self
		archiveCode: 'label', String cr, String tab, '^ ', profile label storeString
		under: 'profile'.