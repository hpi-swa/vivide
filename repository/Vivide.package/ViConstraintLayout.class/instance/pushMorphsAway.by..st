private
pushMorphsAway: someMorphs by: pivotMorph

	| boundsToUse |
	someMorphs ifEmpty: [^ self].

	boundsToUse := pivotMorph bounds outsetBy: self cellInset.  

	someMorphs do: [:m | (m bounds intersects: boundsToUse)
		ifTrue: [ | current wanted |
			current := m center - boundsToUse center.
			wanted := (boundsToUse extent // 2) + (m extent // 2).
			wanted := wanted - current abs.
			wanted > (0@0) ifTrue: [
				wanted x < wanted y
					ifTrue: [wanted := wanted x @ 0]
					ifFalse: [wanted := 0 @ wanted y].
				m center: m center + (wanted * current sign).

			self
				pushMorphsAway: (someMorphs copyWithout: m)
				by: m]]].