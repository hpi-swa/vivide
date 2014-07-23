updating
updateSummaryBtn

	| result |
	result := (ViLabelService doObject: self object) asHtmlText.
	self hasUnacceptedChanges
		ifTrue: [result addAttribute: TextEmphasis bold].
	
	self summaryBtn
		icon: (ViIconService doObject: self object);
		text: result.