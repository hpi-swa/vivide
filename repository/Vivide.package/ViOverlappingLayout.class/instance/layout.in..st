as yet unclassified
layout: pane in: bounds

	pane submorphs
		reject: [:m | m disableTableLayout]
		thenDo: [:m | 
			(m valueOfProperty: #edgeToAdhereTo) ifNotNil: [:e |
				e = #topRight
					ifTrue: [m topRight: bounds topRight].
				e = #bottomRight
					ifTrue: [m bottomRight: bounds bottomRight].
				] ifNil: [	m bounds: bounds]].
			
"| maxExtent |
	maxExtent := pane extent.

	(pane submorphs reject: [:m | m disableTableLayout or: [m visible not]])
		do: [:morphs |
			m hResizing = #shrinkWrap
				ifTrue: [maxExtent := maxExtent max: (m width @ 0)].
			m vResizing = #shrinkWrap
				ifTrue: [maxExtent := maxExtent max: (0 @ m height)]];
		do: [:morphs |
			(m valueOfProperty: #edgeToAdhereTo)
				ifNotNil: [:e | e = #topRight ifTrue: [e topRight: bounds topRight]]
				ifNil: [
					m topLeft: pane topLeft.
					m hResizing ~= #shrinkWrap ifTrue: [m width: maxExtent y].
					m vResizing ~= #shrinkWrap ifTrue: [m height: maxExtent x]]]."