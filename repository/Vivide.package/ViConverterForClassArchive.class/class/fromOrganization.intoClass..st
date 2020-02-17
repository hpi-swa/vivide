instance creation
fromOrganization: anOrganization intoClass: aClass

	^ self new
		organization: anOrganization;
		theClass: aClass;
		yourself