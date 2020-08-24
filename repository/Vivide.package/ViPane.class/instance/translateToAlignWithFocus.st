as yet unclassified
translateToAlignWithFocus

	| world hand focus |
	world := ViActiveVivide world.
	hand := world firstHand.
	
	"Move bounds right to currently focused window."
	hand := world firstHand.
	hand halo ifNotNil: [:halo |
		focus := (halo target firstOwnerSuchThat: [:m | m isPane])].
	focus ifNil: [
		hand keyboardFocus ifNotNil: [:m |
			focus := m firstOwnerSuchThat: [:mm | mm isPane]]].
	focus ifNotNil: [:tw |
		tw fullBounds in: [:b | | delta |
			delta := self left - self decoration window fullBounds left.
			self topLeft: b topRight + (delta @ 0)]].