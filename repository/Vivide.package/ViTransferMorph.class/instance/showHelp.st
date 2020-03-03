as yet unclassified
showHelp

	| text |
	self owner ifNil: [^ self].

	text := ('<font size="18" family="Bitmap Segoe UI Light" color="#008800">Drag Modifier Keys</font>',
		('<font size="22" family="Bitmap Segoe UI Light" color="#AAAAAA">{1}</font>' format: {
		self flagSpecs
			inject: ''
			into: [:label :spec | label, '<br>  ', spec first asString, ' ... ', spec second]	
		})) asTextFromHtml.
	text addAttribute: (TextFontReference toFont: TextStyle defaultFixedFont).
	text := text asMorph.
	
	helpBox := Morph new color: (Color gray:0.3); bounds: (text fullBounds outsetBy: 15); addDropShadow; yourself.
	text center: helpBox center.
	helpBox addMorphFront: text.

	helpBoxPositions := OrderedCollection new.
	helpBoxPositions add: (RealEstateAgent maximumUsableArea bottomRight - helpBox extent - (30@30)).
	helpBoxPositions add: (RealEstateAgent maximumUsableArea topLeft + (30@30)).

	helpBox topLeft: helpBoxPositions first.
	helpBox openInWorld.

	"Remove help box after 10 seconds. Workaround for debuggers..."
	helpBox addAlarm: #delete after: 10000.