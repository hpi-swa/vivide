as yet unclassified
showHelp

	| text |
	self owner ifNil: [^ self].

	text := ('<font size="18" family="Bitmap Segoe UI Light" color="#008800">Drag Modifier Keys</font>',
		('<font size="22" family="Bitmap Segoe UI Light" color="#AAAAAA">{1}</font>' format: {
		self flagSpecs
			inject: ''
			into: [:label :spec | label, String cr, String tab, spec first asString, ' ... ', spec second]	
		})) asHtmlText asMorph.
	text backgroundColor: Color black.
	
	helpBox := (ViDropShadowManager default formForBounds: (text fullBounds outsetBy: 15)) asMorph.
	text topLeft: helpBox topLeft + (25@25).
	helpBox addMorphFront: text.

	helpBoxPositions := OrderedCollection new.
	helpBoxPositions add: (RealEstateAgent maximumUsableArea bottomRight - helpBox extent - (30@30)).
	helpBoxPositions add: (RealEstateAgent maximumUsableArea topLeft + (30@30)).

	helpBox topLeft: helpBoxPositions first.
	helpBox openInWorld.