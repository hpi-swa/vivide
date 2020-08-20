initialization - pop-up
openInWindowBounds: bounds grab: boolean
	
	| world hand focus |
	world := ViActiveVivide world.
	
	(self decorationNamed: #window ifAbsentPut: [ViWindow new]) goBehind.
	self bounds: bounds.
	
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
			b right + self width + delta < world right
				ifTrue: [self topLeft: b topRight + (delta @ 0)]]].
	
	self openInWorld: world.
	self translateToShowDecorations.
	
	self activate.
	
	"Last cosmetics."
	self updateColor.
	self updateLabel.
	
	boolean ifTrue: [
		self setProperty: #initialDrop toValue: true.
		self decoration window hasDropShadow: false.
		"Defer attachment to hand because we might have other mouse events in the processing chain."
		Project current addDeferredUIMessage: [hand attachMorph: self]].
	
	^ self