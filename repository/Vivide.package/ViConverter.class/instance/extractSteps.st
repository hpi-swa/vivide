extract
extractSteps

	self profile ifNotNil: [:profile |
		^ self extractStepsFromProfile:profile].
	self organization ifNotNil: [:orga |
		^ self extractStepsFromOrganization: orga].

	^ #()