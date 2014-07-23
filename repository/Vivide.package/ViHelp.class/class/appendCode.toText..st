construction
appendCode: aString toText: aText

	| snippet styler |
	snippet := aString asText.
	snippet addAttribute: (TextFontReference toFont: UiPlatform current standardCodeFont).

	styler := ViTextStyler new.
	styler font: UiPlatform current standardCodeFont.

	snippet := styler format: snippet.
	snippet := (styler styledTextFor: snippet).
	snippet addAttribute: (TextFontReference toFont: UiPlatform current standardCodeFont).
		
	aText append: snippet.