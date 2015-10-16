searching - specific
searchBookmarks: token

	| match |
	match := [:state | state headerText asString includesSubstring: token caseSensitive: false].
		
	currentSource := #bookmarks.

	self
		startSearchIn: ViProfile active bookmarks
		match: (token ifEmpty: [[:s | true]] ifNotEmpty: [:t | match]).