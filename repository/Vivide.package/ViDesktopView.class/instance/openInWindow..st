as yet unclassified
openInWindow: pane

	| preferredWidth preferredHeight grab world hand |
	pane addWindowDecoration.
	
	preferredWidth := 200 * RealEstateAgent scaleFactor to: 700 * RealEstateAgent scaleFactor.
	preferredHeight := 100 * RealEstateAgent scaleFactor to: 500 * RealEstateAgent scaleFactor.

	pane fullBounds.
	pane width: ((pane optimalWidth max: preferredWidth first) min: preferredWidth last).
	pane fullBounds.
	pane height: ((pane optimalHeight max: preferredHeight first) min: preferredHeight last).
	
	self addMorphFront: pane.
	
	pane decoration window hasDropShadow: false.
	pane translateToAlignWithFocus.
	pane translateToShowDecorations.

	^ pane