*vivide-queries
asRawScript

	ViLoggingService trigger: {#message -> 'Script (raw) created from string/block.'}.

	self flag: #refactor. "mt: See script template #globalInOut."

	ViScriptPart new in: [:script |
		script notifier doSilently: [script sourceCode: self].
		^ script]  