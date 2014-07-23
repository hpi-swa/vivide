serialization
asJsonString

	self flag: #obsolete. "mt: Serialization mechanism uses object string representation. See ViQueryOrganizer."
	^ self asDictionary asJsonString