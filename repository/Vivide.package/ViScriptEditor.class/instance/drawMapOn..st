as yet unclassified
drawMapOn: aCanvas

	| offset delta offsetArguments |
	self isCollapsed ifTrue: [^ self].
	self mapIndex > self map size ifTrue: [^ self].

	delta := 2@10.
	offset := self topLeft + (delta // 2). 
	offsetArguments := 3 @ (offset y -13).

	1 to: (self mapIndex-1) do: [:i |
		aCanvas
			line: offset to: offset + (0@ (self height - ((self mapIndex + 1) * 8)))
			width: 1 color: (Color gray: 0.7);
			line: offset to: (offsetArguments x @ offset y)
			width: 1 color: (Color gray: 0.7).
			
		i = 1
			ifTrue: [
				('<font size="9" color="#000000">', ((self map at: i) ifEmpty: [' ']), '</font>')
					asHtmlText asMorph topLeft: offset + (3 @ -10); drawOn: aCanvas.
				offsetArguments := offsetArguments + (5@0)]
			ifFalse: [
				(('<font size="9" color="#AAAAAA">', (self map at: i), '</font>')
					asHtmlText asMorph topLeft: offsetArguments; drawOn: aCanvas; width)
						in: [:w | offsetArguments := offsetArguments + (w @ 0)].
				].
		i = 1 ifTrue: [delta := delta x @ (delta y + 4)].
		i = 2 ifTrue: [delta := delta x @ (delta y - 10)].
		offsetArguments := offsetArguments + delta.
		offset := offset + delta.
		]