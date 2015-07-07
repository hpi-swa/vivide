as yet unclassified
performTest

	ViActiveOrganizer
		value: organization
		during: [organization notifier doSilently: [super performTest]].