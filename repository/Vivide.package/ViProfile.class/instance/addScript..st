add/remove
addScript: aScript
	"Overwrites any script with the same id in the organization. Use this API to configure new standard tools."
	
	(self organization stepById: aScript id)
		ifNotNil: [:script | script unregister].
	
	aScript adoptOrganization: self organization.  