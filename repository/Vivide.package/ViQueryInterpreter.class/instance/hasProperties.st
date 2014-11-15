testing
hasProperties

	^ (properties notNil
		and: [properties notEmpty])
		and: [properties anyOne notEmpty]