running
setUp

	super setUp.
	
	notifier := ViObjectChangeNotifier new.
	events := OrderedCollection new.
	
	notifier notify: self using: #addEvent:.