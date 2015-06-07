as yet unclassified
drawOverlayInHaloOn: aCanvas

	self panes do: [:p |
		UiPlatform current canvas: aCanvas
			frameRoundRect: (p bounds insetBy: (15 min: (p width min: p height)-30 max: 0))
			radius: 4 width: 2
			color: (Color white alpha: 0.5)].
	self inputPanes do: [:p |
		'<font color="#FFFFFF">IN</font>' asHtmlText asMorph
			center: p center;
			drawOn: aCanvas].
	self outputPanes do: [:p |
		'<font color="#FFFFFF">OUT</font>' asHtmlText asMorph
			center: p center + (0@15);
			drawOn: aCanvas].  