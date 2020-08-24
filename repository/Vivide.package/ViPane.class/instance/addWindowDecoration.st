as yet unclassified
addWindowDecoration

	(self decorationNamed: #window ifAbsentPut: [ViWindow new]) goBehind.
	self updateColor; updateLabel.