accessing
iconCode
	"Code snippet to generate or find the icon."
	
	^ self icon
		ifNil: ['nil']
		ifNotNil: [:form | | ref |
			ref := UiIcons detect: form ifNone: [^ 'nil'].
			ref classSymbol, ' ', ref selector]