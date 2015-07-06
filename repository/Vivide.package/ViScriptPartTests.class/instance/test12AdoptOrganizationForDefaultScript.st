tests
test12AdoptOrganizationForDefaultScript

	| newOrga |
	newOrga := ViQueryOrganizer new.

	#identityTest asScript adoptOrganization: newOrga.
	self assert: #identityTest asScript notNil.
	self assert: #identityTest asScript definition organization == organization.