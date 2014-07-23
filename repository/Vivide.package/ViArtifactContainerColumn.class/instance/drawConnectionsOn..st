as yet unclassified
drawConnectionsOn: aCanvas

	| font col |
	font := UiPlatform current standardButtonFont.
	col := (Color r: 0.667 g: 0.667 b: 0.667). "#AAAAAA"
	
	self artifactContainers overlappingPairsDo: [:c1 :c2 | | reason1 reason2 pt1 pt2 offset |
		reason1 := c1 knowsObject: c2 object.
		reason2 := c2 knowsObject: c1 object.
		offset := -15 - (reason2 ifNil: [0] ifNotNil: [font widthOfString: reason2]).
		pt1 := c1 bottomRight + (offset @ -5).
		pt2 := c2 topRight + (offset @5).
		
		reason1 notNil | reason2 notNil
			ifTrue: [aCanvas line: pt1 to: pt2 color: col].
		reason1 ifNil: [reason2 ifNotNil: [
			aCanvas
				frameOval: ((0@0 extent: 5@5) translateBy: pt1 - (2@2))
				color: col
			]] ifNotNil: [
			aCanvas
				fillOval: ((0@0 extent: 5@5) translateBy: pt1 - (2@2))
				color: col;
				drawString: reason1
				at: (pt1 x - 5 - (font widthOfString: reason1)) @ (pt1 y + pt2 y // 2 - 12)
				font: font
				color: col].
		reason2 ifNil: [reason1 ifNotNil: [
			aCanvas
				frameOval: ((0@0 extent: 5@5) translateBy: pt2 - (2@2))
				color: col
			]] ifNotNil: [
			aCanvas
				fillOval: ((0@0 extent: 5@5) translateBy: pt2 - (2@2))
				color: col;
				drawString: reason2
				at: (pt1 x + 6) @ (pt1 y + pt2 y // 2 - 3)
				font: font
				color: col]]