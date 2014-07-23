accessing - object
object: aSnippet

	aSnippet ifNil: [
		self flag: #refactor. "mt: Remove support for nil. Only to be opened with real objects."
		self object: self defaultSnippet.
		snippetEdit selectLine.
		^ self].
	
	snippet := aSnippet.
	
	(aSnippet isKindOf: StringHolder) ifTrue: [
		snippetPanel hideFull].

	self clear.

	self defaultSnippet code = aSnippet code
		ifTrue: [snippetEdit selectLine].