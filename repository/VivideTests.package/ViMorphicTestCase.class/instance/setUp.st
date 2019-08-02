running
setUp

	super setUp.
	
	organization := ViScriptOrganizer new.
	organization notifier: ViScriptChangeNotifier new.
	
	self
		addScript: {[:object | #text -> object printString]
			-> {#id -> #defaultProperties} };
		addScript: {[:object | object]
			-> {#id -> #artifacts} }.