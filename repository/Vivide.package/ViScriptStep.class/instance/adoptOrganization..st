organization
adoptOrganization: aScriptOrganizer
	"Take my definition with me. No need for super call due to #allSteps."

	self allSteps "collect all first!"
		select: [:step | step isDefault not and: [step organization = self organization]]
		thenDo: [:step |
			step
				unregister;
				organization: aScriptOrganizer;
				register.
			step definition adoptOrganization: aScriptOrganizer].