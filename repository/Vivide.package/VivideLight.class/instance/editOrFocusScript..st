as yet unclassified
editOrFocusScript: aScript

	self world doOneSubCycle. "Ensure all tool windows to be opened by now."
	self toolWindows
		detect: [:wnd | wnd editor includesObject: aScript]
		ifFound: [:wnd | wnd activate. wnd editor focusObject: aScript]
		ifNone: [self openArtifact: aScript].