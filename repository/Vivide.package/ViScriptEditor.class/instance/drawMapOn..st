drawing
drawMapOn: aCanvas

	| offset delta offsetArguments offsetLine inaccessible c1 c2 font fontRef |
	self isCollapsed ifTrue: [^ self].
	self mapIndex > self map size ifTrue: [^ self].

	inaccessible := self isScriptInaccessible.

	font := Preferences standardButtonFont.
	fontRef := TextFontReference toFont: font.
	delta := 2 @ font height.
	offset := self topLeft + (delta // 2). 
	offsetLine := offset.
	offsetArguments := (self left + 3) @ (offset y - (font height // 2)).

	c1 := inaccessible ifTrue: [Color fromString: '#D46A6A'] ifFalse: [Color gray: 0.3].
	c2 := inaccessible ifTrue: [Color fromString: '#D46A6A'] ifFalse: [Color gray: 0.7].

	1 to: (self mapIndex-1) do: [:i | | text |
		aCanvas
			line: offsetLine to: offsetLine x @ (self innerBounds bottom - ((self mapIndex - i) * font height ))
			width: 1 color: c2;
			line: offsetLine to: (offsetArguments x @ offsetLine y)
			width: 1 color: c2.
				
		i = 1
			ifTrue: [
				text := ((self map at: i) ifEmpty: [' ']) asText.
				text
					addAttribute: fontRef;
					addAttribute: (TextColor color: c1).
				text asMorph topLeft: offset + (3 @ (font height // -2)); drawOn: aCanvas.
				offsetArguments := offsetArguments + (5@0)]
			ifFalse: [
				text := (self map at: i) asText.
				text
					addAttribute: fontRef;
					addAttribute: (TextColor color: c2).
				(text asMorph topLeft: offsetArguments; drawOn: aCanvas; width)
					in: [:w | offsetArguments := offsetArguments + (w @ 0)].
				].
		i = 2 ifTrue: [
			delta := delta x @ (delta y - (font height // 2)).
			offsetLine := offsetLine + (0 @ (font height // 3))].

		offsetArguments := offsetArguments + delta.
		offset := offset + delta.
		offsetLine := offsetLine + delta.
		]