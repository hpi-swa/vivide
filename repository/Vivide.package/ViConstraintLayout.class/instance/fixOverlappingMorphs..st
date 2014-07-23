private
fixOverlappingMorphs: someMorphs
	"Push morphs out of the way if areas overlap."

	(someMorphs sorted: [:m1 :m2 | m1 topLeft <= m2 topLeft]) in: [:sortedMorphs |
		sortedMorphs do: [:fixed | | waiting c s |
			c := fixed topLeft.
			s := fixed extent.
			waiting := true.
			sortedMorphs do: [:variable |
				waiting ifFalse: [ | cv |
					cv := variable topLeft.
					((fixed bounds outsetBy: self cellInset) intersects: variable bounds)
						ifTrue: [
							(cv y >= ((c y + s y) * 0.8))
								ifTrue: ["push down"
									variable top: (c y + s y + self cellInset)]
								ifFalse: ["push right"
									variable left: (c x + s x + self cellInset)]]].
				waiting := waiting and: [fixed ~~ variable].
			]]].