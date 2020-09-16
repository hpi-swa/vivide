as yet unclassified
addMessageDecoration

	| d |
	(self decorationNamed: #message) ifNotNil: [:m | ^ m].
	d := self addDecoration: Morph new named: #message.
	
	d color: (Color black alpha: 0.50).

	d layoutPolicy: TableLayout new.
	d hResizing: #spaceFill.
	d vResizing: #shrinkWrap.
	d listDirection: #leftToRight.
	d cellPositioning: #topLeft.
	d cellInset: 5.
	d clipSubmorphs: true.
	
	d setProperty: #infoIcon toValue: ((ViIcons icons8Info64px1Icon dyed: Color white) scaledToSize: (24@24) scaleValueToDisplay).
	d setProperty: #errorIcon toValue: ((ViIcons icons8Error64px1Icon dyed: Color yellow) scaledToSize: (24@24) scaleValueToDisplay).
	d setProperty: #helpIcon toValue: ((ViIcons icons8Help64px1Icon dyed: Color white) scaledToSize: (24@24) scaleValueToDisplay).
	
	d addMorphFront: (UiToolButton new color: Color black; autoRaise: true; buttonStyle: #iconOnly; yourself).
	d addMorphBack: (TextMorph new hResizing: #spaceFill; yourself).
	
	self connect: d submorphs first signal: #clicked: toSelector: #showLastException.
	
	^ d