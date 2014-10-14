as yet unclassified
drawMapOn: aCanvas

	| offset r s |
	r := 0@0 corner: 8@8.
	s := 2.
	offset := edit bottomRight - ((self map size * (r width + 2))@10). 
	self map withIndexDo: [:spec :i |
		spec = #current
			ifFalse: [aCanvas
				frameOval: (r translateBy: offset)
				color: (Color gray: 0.7)]
			ifTrue: [aCanvas
				fillOval: (r translateBy: offset)
				color: (Color gray: 0.7)].
		offset := offset + (r extent x + s @ 0).
		]