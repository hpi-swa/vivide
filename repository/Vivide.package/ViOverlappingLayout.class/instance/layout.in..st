as yet unclassified
layout: pane in: bounds

	pane submorphs
		reject: [:m | m disableTableLayout]
		thenDo: [:m | 
			(m valueOfProperty: #edgeToAdhereTo) ifNotNil: [:e |
				e = #topRight
					ifTrue: [e topRight: bounds topRight]
				] ifNil: [	m bounds: bounds]].