accessing
default

	^ ViScriptOrganizer active
		ifNil: [ViQueryChangeNotifier uniqueInstance]
		ifNotNil: [:organizer | organizer notifier]