running
setUp

	super setUp.
	
	previousPreferences := {
		Project uiManager openToolsAttachedToMouseCursor.
		"Morph useSoftDropShadow.
		Preferences mouseOverForKeyboardFocus"}.
		
	Project uiManager openToolsAttachedToMouseCursor: false.
	"Morph useSoftDropShadow: false.
	Preferences disable: #mouseOverForKeyboardFocus."
	
	organization := ViScriptOrganizer new.
	organization notifier: ViScriptChangeNotifier new.
	
	self
		addScript: {[:object | #text -> object printString]
			-> {#id -> #defaultProperties} };
		addScript: {[:object | object]
			-> {#id -> #artifacts} }.