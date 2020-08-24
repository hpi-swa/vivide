decorations
translateToAlignWithFocus

	| world hand focus done |
	self assert: [self isInWorld].
	
	world := self world.
	hand := world firstHand.
	
	"Move bounds right to currently focused window."
	hand := world firstHand.
	hand halo ifNotNil: [:halo |
		focus := (halo target firstOwnerSuchThat: [:m | m isPane])].
	focus ifNil: [
		hand keyboardFocus ifNotNil: [:m |
			self flag: #tofix. "mt: Wrong for pop-up panes."
			focus := m firstOwnerSuchThat: [:mm | mm isPane]]].
	focus ifNotNil: [self translateToAlignWith: focus].
	
	done := false.		
	[done] whileFalse: [
		self owner submorphs
			detect: [:m | m ~~ self
				and: [m isPane
				and: [
					m decoration window hasDropShadow: false.
					m fullBounds topLeft = self fullBounds topLeft]]]
			ifFound: [:m | self translateToAlignWith: m]
			ifNone: [done := true]].