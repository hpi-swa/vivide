instance creation
fromProfile: aProfile intoClass: aClass

	^ self new
		profile: aProfile;
		theClass: aClass;
		yourself