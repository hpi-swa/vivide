*vivide-queries
asRawScript

	ViLoggingService trigger: {#message -> 'Script (raw) created from string/block.'}.

		ViScriptPart new in: [:script |
			script notifier doSilently: [script sourceCode: self].
			^ script]  