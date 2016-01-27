running
setUp

	super setUp.
	
	previousPreferences := {
		ToolBuilder openToolsAttachedToMouseCursor.
		"Morph useSoftDropShadow.
		Preferences mouseOverForKeyboardFocus"}.
		
	ToolBuilder openToolsAttachedToMouseCursor: false.
	"Morph useSoftDropShadow: false.
	Preferences disable: #mouseOverForKeyboardFocus."
	
	organization := ViQueryOrganizer new.
	
	{[:object | #text -> object printString] -> {#id -> #defaultProperties}} asScript
		adoptOrganization: organization.
	{[:object | object] -> {#id -> #artifacts}} asScript
		adoptOrganization: organization.