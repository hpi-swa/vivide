dropping - geometry
dropAreaForEvent: aMouseEvent

	self acceptedDropAreas do: [:area |
		(self dropRectanglesForPoint: area) do: [:rect |
			(rect containsPoint: aMouseEvent position)
				ifTrue: [^ area]]].
	^ nil