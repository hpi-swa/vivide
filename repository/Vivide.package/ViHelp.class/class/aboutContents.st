private
aboutContents


	^ String streamContents: [:strm | 
		strm
			nextPutAll: '<b>About "', Vivide appName, '"</b><br><br>'.

		Vivide appVersion
		ifNil: [strm nextPutAll: 'Could not fetch current version information!']
		ifNotNil: [:version | | message |
			message := 'Current version:<br>   <font color="#00AA00">', version asString escapeHtmlText, '</font>'.
			message := message, '<br><br>Other modules:'.
			#(Animations Signals Widgets SightCoverage SightCallgraph SightTagging) do: [:suffix | 
				message := message, '<br>   ', (Smalltalk at: (#ConfigurationOf, suffix) asSymbol) project currentVersion asString escapeHtmlText].
			strm nextPutAll: message]]