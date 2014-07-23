updating
updateHeaderText

	| text |
	text := ''.

	self objects size = 1
		ifTrue: [text := '{1} ({2})' format: {
			(ViLabelService doObject: self objects first) asString.
			(ViObjectOriginService doObject: self objects first) asString}].
		
	self objects size > 1
		ifTrue: [text := self objects
			inject: '' into: [:lbl :obj | lbl, (ViLabelService doObject: obj) asString, ', '].
			text := (text allButLast: 2) "comma" "withoutLineEndingsTruncatedTo: 25"].
		
	self headerText: text.