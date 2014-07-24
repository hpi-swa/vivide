*VivideDynamicAnalysis
searchTags: token

	| match tags |
	tags := SdTagOrganizer default tags.
	
	(tags size > 500 and: [token size < 3]) ifTrue: [
		resultList helpText: ('There are {1} tags in the system. Please refine your query. (>2 characters)'
			format: {tags size}).
		^ self].
	
	match := token
		ifEmpty: [[:tag | true]]
		ifNotEmpty: [:t | [:tag | tag tagname includesSubstring: t caseSensitive: false]].
	
	self setSortBlock: [:tag1 :tag2 | tag1 tagname <= tag2 tagname].
	
	currentSource := #tags.
	
	self
		startSearchIn: tags
		match: match.