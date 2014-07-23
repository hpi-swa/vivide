drawing
drawGroupLabelsOn: aCanvas
	"Depends on layouting. See ViArtifactContainerColumnLayout for space dimensions."

	| lastGroup label |
	lastGroup := nil.
	self artifactContainers do: [:container | 		
		(lastGroup ~= container group and: [container group notNil]) ifTrue: [
			aCanvas
				fillRectangle: (container topLeft - (0@12) corner: container topRight)
				color: Color white.
			
			aCanvas
				line: (self left + 5) @ (container top - 5)
				to: (self right - 5) @ (container top - 5)
				color: (Color fromString: #AAAAAA).
			
			label := ('<font family="Bitmap Segoe UI" size="10" color="#AAAAAA">', container group asString, '</font>') asHtmlText asMorph.
			label
				autoFit: true;
				topLeft: (container left + (container width - label width // 2)) @ (container top - 13).

			aCanvas
				fillRectangle: (label bounds outsetBy: (5@ -5 corner: 5@ -5))
				color: Color white.

			label fullDrawOn: aCanvas].
		container group ifNotNil: [
			lastGroup := container group]].