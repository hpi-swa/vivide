actions
showAbout

	| msg |
	msg := ViOverlayMessageBox new
		title: 'About "', self class appName, '"'.

	self class appVersion
		ifNil: [msg message: 'Could not fetch current version information!' icon: UiFugueIcons exclamationFrameIcon]
		ifNotNil: [:version | | message |
			message := 'Current version:<br>   <font color="#00AA00">', version asString escapeHtmlText, '</font>'.
			message := message, '<br><br>Other modules:'.
			#(Animations Signals Widgets SightCoverage SightCallgraph SightTagging) do: [:suffix | 
				message := message, '<br>   ', (Smalltalk at: (#ConfigurationOf, suffix) asSymbol) project currentVersion asString escapeHtmlText].
			msg message: message icon: UiSilkIcons informationIcon].

	msg addAction: 'Close' icon: UiSilkIcons acceptIcon.
	
	msg showAbove: self.  