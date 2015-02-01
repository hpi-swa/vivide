add/remove
addScript: aScript

	(self organization stepById: aScript id)
		ifNotNil: [:script | script unregister].
	aScript adoptOrganization: self organization.  