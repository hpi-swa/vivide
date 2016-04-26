drawing
drawMapOn: aCanvas

	| offset delta offsetArguments inaccessible c1 c2 |
	self isCollapsed ifTrue: [^ self].
	self mapIndex > self map size ifTrue: [^ self].

	inaccessible := self isScriptInaccessible.
	delta := 2@10.
	offset := self topLeft + (delta // 2). 
	offsetArguments := (self left + 3) @ (offset y -9).

	c1 := inaccessible ifTrue: [Color fromString: '#D46A6A'] ifFalse: [Color gray: 0.3].
	c2 := inaccessible ifTrue: [Color fromString: '#D46A6A'] ifFalse: [Color gray: 0.7].

	1 to: (self mapIndex-1) do: [:i | | text |
		aCanvas
			line: offset to: offset + (0@ (self height - ((self mapIndex + 1) * 8)))
			width: 1 color: c2;
			line: offset to: (offsetArguments x @ offset y)
			width: 1 color: c2.
				
		i = 1
			ifTrue: [
				text := ((self map at: i) ifEmpty: [' ']) asText.
				text
					addAttribute: (TextFontReference toFont: Preferences standardButtonFont);
					addAttribute: (TextColor color: c1).
				text asMorph topLeft: offset + (3 @ -5); drawOn: aCanvas.
				offsetArguments := offsetArguments + (5@0)]
			ifFalse: [
				text := (self map at: i) asText.
				text
					addAttribute: (TextFontReference toFont: Preferences standardButtonFont);
					addAttribute: (TextColor color: c2).
				(text asMorph topLeft: offsetArguments; drawOn: aCanvas; width)
					in: [:w | offsetArguments := offsetArguments + (w @ 0)].
				].
		i = 1 ifTrue: [delta := delta x @ (delta y + 4)].
		i = 2 ifTrue: [delta := delta x @ (delta y - 10)].
		offsetArguments := offsetArguments + delta.
		offset := offset + delta.
		]