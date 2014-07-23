accessing
layoutInset: number

	layoutInset := number isInteger
		ifTrue: [number @ number corner: number @ number]
		ifFalse: [number isPoint
			ifTrue: [number corner: number]
			ifFalse: [number "rectangle"]].