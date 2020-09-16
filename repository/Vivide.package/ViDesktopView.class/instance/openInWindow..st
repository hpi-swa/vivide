as yet unclassified
openInWindow: pane

	| preferredWidth preferredHeight grab world hand |
	pane addWindowDecoration.
	
	preferredWidth := 200 scaleValueToDisplay to: 700 scaleValueToDisplay.
	preferredHeight := 100 scaleValueToDisplay to: 500 scaleValueToDisplay.

	pane fullBounds.
	pane width: ((pane optimalWidth max: preferredWidth first) min: preferredWidth last).
	pane fullBounds.
	pane height: ((pane optimalHeight max: preferredHeight first) min: preferredHeight last).
	
	self addMorphFront: pane.
	
	pane decoration window hasDropShadow: false.
	pane translateToAlignWithFocus.
	pane translateToShowDecorations.

	^ pane