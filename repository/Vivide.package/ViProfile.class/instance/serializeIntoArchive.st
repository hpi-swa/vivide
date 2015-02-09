as yet unclassified
serializeIntoArchive

	self assert: self archive notNil.

	^ ViQuerySerializer new
		setProfile: self;
		serialize