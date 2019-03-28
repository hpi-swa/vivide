as yet unclassified
textObjectsFor: aText

	self flag: #conversionIssue. "mt: We need a #findTokens: for text objects."
	^ (aText asString findTokens: self separator)
		collect: [:ea | ea withBlanksTrimmed asText]