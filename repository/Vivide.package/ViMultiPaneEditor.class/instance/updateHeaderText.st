updating
updateHeaderText

	| newHeader text |
	newHeader := ((self panes sorted: [:p1 :p2 | p1 topLeft <= p2 topLeft])
		select: [:pane | pane currentQuery notNil])
		inject: ''
		into: [:header :pane | header, (pane currentQuery nextLabel ifNil: [pane currentQuery definition sourceCode]) asString, ' > '].
	newHeader := newHeader ifNotEmpty: [:txt | txt allButLast: 3] ifEmpty: [''].
	
	text := ''.
	self panes size = 1 ifTrue: [
		self inputPane objects size = 1
			ifTrue: [text := '{1} ({2})' format: {
				(ViLabelService doObject: self inputPane objects first) asString.
				(ViObjectOriginService doObject: self inputPane objects first) asString}].
		
		self inputPane objects size > 1
			ifTrue: [text := self inputPane objects
				inject: '' into: [:lbl :obj | lbl, (ViLabelService doObject: obj) asString, ', '].
				text := (text allButLast: 2) "comma" "withoutLineEndingsTruncatedTo: 25"].
		
		
		
		].
	
	
	self headerText: ('{1}{2}{3}' format: {
		newHeader.
		text ifNotEmpty: [': ']
		ifEmpty: ['']. text}).