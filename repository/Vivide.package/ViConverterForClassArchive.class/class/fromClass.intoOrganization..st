instance creation
fromClass: aClass intoOrganization: anOrganization

	^ self new
		organization: anOrganization;
		theClass: aClass;
		yourself