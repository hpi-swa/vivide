accessing
default

	^ ViQueryOrganizer active
		ifNil: [ViQueryChangeNotifier uniqueInstance]
		ifNotNil: [:organizer | organizer notifier]