as yet unclassified
fixOverlappingMorphs: someMorphs
	"Push morphs out of the way if areas overlap."

	| additionalCells |
	additionalCells := 0@0.
	(someMorphs sorted: [:m1 :m2 | m1 gridCell <= m2 gridCell]) in: [:sortedMorphs |
		sortedMorphs do: [:fixed | | waiting c s |
			c := fixed gridCell.
			s := fixed gridSpan.
			waiting := true.
			sortedMorphs do: [:variable |
				waiting ifFalse: [ | cv |
					cv := variable gridCell.
					((c x + s x - cv x) > 0 and: [(c y + s y - cv y) > 0])
						ifTrue: [
							(cv y >= ((c y + s y - 1) * 0.8))
								ifTrue: ["push down"
									additionalCells := additionalCells x @ (additionalCells y + (c y + s y - cv y)).
									variable gridCell: (cv x)@(c y + s y)]
								ifFalse: ["push right"
									additionalCells := (additionalCells x + (c x + s x - cv x)) @ additionalCells y.
									variable gridCell: (c x + s x)@(cv y)]]].
				waiting := waiting and: [fixed ~~ variable].
				]]].
		^ additionalCells