tests - organization
test06AdoptOrganizationForDefaultScript

	| organization |
	organization := ViScriptOrganizer new.

	self
		assert: #defaultProperties asScript isDefault;
		deny: #defaultProperties asScript organization == organization.

	#defaultProperties asScript adoptOrganization: organization.

	self
		assert: #defaultProperties asScript isDefault;
		deny: #defaultProperties asScript organization == organization.