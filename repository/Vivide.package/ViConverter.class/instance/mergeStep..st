merge
mergeStep: dict

	self profile ifNotNil: [:profile |
		^ self mergeStep: dict intoProfile: profile].
	self organization ifNotNil: [:orga |
		^ self mergeStep: dict intoOrganization: orga].