drawing
drawGroupLabelsOn: aCanvas
	"Depends on layouting. See ViArtifactContainerColumnLayout for space dimensions."

	| lastGroup label font |
	lastGroup := nil.
	font := Preferences standardButtonFont.
	
	self artifactContainers do: [:container | 		
		(lastGroup ~= container group and: [container group notNil]) ifTrue: [
			aCanvas
				fillRectangle: (container topLeft - (0@ font height) corner: container topRight)
				color: Color white.
			
			aCanvas
				line: (self left + 5) @ (container top - (font height // 2))
				to: (self right - 5) @ (container top - (font height // 2))
				color: (Color gray: 0.66).
			
			label := container group asString asText.
			label
				addAttribute: (TextFontReference toFont: font);
				addAttribute: (TextColor color: (Color gray: 0.66)).
			label := label asMorph.
			label
				autoFit: true;
				topLeft: (container left + (container width - label width // 2)) @ (container top - font height).

			aCanvas
				fillRectangle: (label bounds outsetBy: (5@ -5 corner: 5@ -5))
				color: Color white.

			label fullDrawOn: aCanvas].
		container group ifNotNil: [
			lastGroup := container group]].