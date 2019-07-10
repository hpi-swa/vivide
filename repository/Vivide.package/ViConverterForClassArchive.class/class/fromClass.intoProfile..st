instance creation
fromClass: aClass intoProfile: aProfile

	^ self new
		profile: aProfile;
		theClass: aClass;
		yourself