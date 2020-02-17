extract
extractCommands

	self profile ifNotNil: [:profile |
		^ self extractCommandsFromProfile:profile].
	self organization ifNotNil: [:orga |
		^ self extractCommandsFromOrganization: orga].

	^ #()