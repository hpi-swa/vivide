support
convertPanes: paneSpecs
	"See ViPane >> #asDictionary to learn about pane specs."

	^ self
		convertPanes: paneSpecs
		toScript: ViScriptPart new   