initialization
adoptPaneColor: color

	super adoptPaneColor: color.
	dropShadow text addAttribute: (TextColor color: (
		self owner ifNil: [color negated] ifNotNil: [:o | o color negated])).