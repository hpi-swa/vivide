running
tearDown

	ViActiveOrganizer
		value: organization
		during: [self forceGuiUpdate].

	ToolBuilder openToolsAttachedToMouseCursor: previousPreferences first.
	"Morph useSoftDropShadow: previousPreferences second.
	Preferences setPreference: #mouseOverForKeyboardFocus toValue: previousPreferences third.
"
	^ super tearDown