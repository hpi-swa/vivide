running
tearDown

	ViActiveScriptOrganizer
		value: organization
		during: [self forceGuiUpdate].

	Project uiManager openToolsAttachedToMouseCursor: previousPreferences first.
	"Morph useSoftDropShadow: previousPreferences second.
	Preferences setPreference: #mouseOverForKeyboardFocus toValue: previousPreferences third.
"
	^ super tearDown