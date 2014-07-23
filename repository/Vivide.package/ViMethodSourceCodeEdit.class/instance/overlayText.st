drawing
overlayText

	| result |
	result := '<b>{1}{3}{2}</b>' format: {
		"underline metaclass selectors"
		self theClass isMeta ifTrue: ['<u>'] ifFalse: [''].
		self theClass isMeta ifTrue: ['</u>'] ifFalse: [''].
		self selector asString escapeHtmlText escapeHtmlText "due to #format:"}.
	^ result asHtmlText