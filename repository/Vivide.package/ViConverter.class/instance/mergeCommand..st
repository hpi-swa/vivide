merge
mergeCommand: dict

	self profile ifNotNil: [:profile |
		^ self mergeCommand: dict intoProfile: profile].
	self organization ifNotNil: [:orga |
		^ self mergeCommand: dict intoOrganization: orga].