overlay messages - position
messagePosition
	"Return the position for the next/current message."

	| corner |
	corner := self messageBounds bottomRight.
	^ corner + (-1 @ 
			(((self submorphs
				select: [:m | m isKindOf: UiMessage]
				thenCollect: [:m | m top + 1]), {corner y}) min - corner y))