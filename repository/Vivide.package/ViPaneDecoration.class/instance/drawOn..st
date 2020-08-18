as yet unclassified
drawOn: aCanvas

	| box cut |
	self flag: #todo. "mt: #wantsRoundedCorners"
	
	box := self outerLayoutBounds.
	aCanvas frameRectangle: box width: self outerBorderWidth color: self outerBorderColor.
	
	box := box insetBy: self outerBorderWidth.
	cut := self bounds.
	
	{
		box left @ cut top corner: cut left @ cut bottom. 
		box left @ box top corner: box right @ cut top.
		cut right @ cut top corner: box right @ cut bottom.
		box left @ cut bottom corner: box right @ box bottom.

	} do: [:rect | aCanvas fillRectangle: rect color: self color].