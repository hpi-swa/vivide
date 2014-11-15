initialization
reset

	self removeAllMorphs.

	self model ifNotNil: [:m |
		self specs do: [:spec | | firstButton |
			firstButton := nil.
			m nodes do: [:node |
					self addMorphBack: (spec itemFor: node).
					firstButton
						ifNil: [firstButton := self submorphs last]
						ifNotNil: [
							"Propagate click in background."
							self submorphs last hideFull.
							self connect: firstButton signal: #clicked: to: self submorphs last selector: #doClick.].
					
					]]].