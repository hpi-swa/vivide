*vivide-queries
asRawScript

	ViLoggingService trigger: {#message -> 'Script (raw) created from string/block.'}.

		ViScriptPart new in: [:script |
			script sourceCode: self.
			^ script]  