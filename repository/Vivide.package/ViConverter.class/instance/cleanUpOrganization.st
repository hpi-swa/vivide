clean up
cleanUpOrganization

	(self profile ifNotNil: [:p | p organization] ifNil: [self organization])
		tidy.