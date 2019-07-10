merge
mergeDefinition: dict

	self profile ifNotNil: [:profile |
		^ self mergeDefinition: dict intoProfile: profile].
	self organization ifNotNil: [:orga |
		^ self mergeDefinition: dict intoOrganization: orga].