accessing
default

	^ ViScriptOrganizer active
		ifNil: [ViScriptChangeNotifier uniqueInstance]
		ifNotNil: [:organizer | organizer notifier]