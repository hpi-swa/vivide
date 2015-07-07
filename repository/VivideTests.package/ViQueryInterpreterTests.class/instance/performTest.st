as yet unclassified
performTest

	ViActiveOrganizer
		value: profile organization
		during: [profile organization notifier doSilently: [super performTest]].