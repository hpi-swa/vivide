updating
updateHeaderText

	| scriptsSummary objectsSummary |
	scriptsSummary := ((((self panes
		"1) Approximate dataflow with geometry."
		sorted: [:pane1 :pane2 | pane1 topLeft <= pane2 topLeft])
		"2) Skip panes that do not have any query and thus do not participate in the tool"
		select: [:pane | pane currentQuery notNil])
		"3) Collect descriptive labels for the panes."
		collect: [:pane | (ViLabelService doObject: pane currentQuery) asString])
		"4) Reduce all into a one-liner."
		ifEmpty: [#('')])
		reduce: [:oneliner :label | oneliner, ' > ', label].
	
	self panes size > 1 ifTrue: [
		self headerText: scriptsSummary.
		^ self].
	
	"Append summary for objects if there is only one pane/script."
	objectsSummary := self inputPane objects size = 1
		ifTrue: ['{1} ({2})' format: {
			(ViLabelService doObject: self inputPane objects first) asString.
			(ViObjectOriginService doObject: self inputPane objects first) asString}]
		ifFalse: [((self inputPane objects
			collect: [:object | (ViLabelService doObject: object) asString])
			ifEmpty: [#('')])
			reduce: [:oneliner :label | oneliner, ', ', label]].
	
	self headerText: (objectsSummary
		ifEmpty: [scriptsSummary]
		ifNotEmpty: ['{1}: {2}' format: {scriptsSummary. objectsSummary}]).