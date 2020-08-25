as yet unclassified
openInWindow

	| preferredWidth preferredHeight grab world hand |
	self addWindowDecoration.
	
	preferredWidth := 200 * RealEstateAgent scaleFactor to: 700 * RealEstateAgent scaleFactor.
	preferredHeight := 100 * RealEstateAgent scaleFactor to: 500 * RealEstateAgent scaleFactor.

	self fullBounds.
	self width: ((self optimalWidth max: preferredWidth first) min: preferredWidth last).
	self fullBounds.
	self height: ((self optimalHeight max: preferredHeight first) min: preferredHeight last).
	
	world := ViActiveVivide world.
	hand := world firstHand.
	
	grab := (self currentEvent isMouse and: [Project uiManager openToolsAttachedToMouseCursor])
		and: [self currentEvent isMouseUp
		or: [self currentEvent isMouseOver and: [self currentEvent redButtonPressed]]].
		
	grab
		ifTrue: [
			self setProperty: #initialDrop toValue: true.
			"Defer attachment to hand because we might have other mouse events in the processing chain."
			Project current addDeferredUIMessage: [hand attachMorph: self]]
		ifFalse: [
			self openInWorld: world.
			self decoration window hasDropShadow: false.
			self translateToAlignWithFocus.
			self translateToShowDecorations.
			self activate].

	^ self