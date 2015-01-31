as yet unclassified
openProfile: aProfile

	self active ifNotNil: #close.
	self basicNew
		profile: aProfile;
		initialize;
		open.