as yet unclassified
nearestPositionFor: point outsideWalls: rects onSide: side

	| mergedWall insideWalls |
	insideWalls := rects select: [:r | r containsPoint: point].
	insideWalls ifEmpty: [^ point].
	
	mergedWall := insideWalls first.
	2 to: insideWalls size do: [:index |
		mergedWall := mergedWall quickMerge: (insideWalls at: index)].
	mergedWall := mergedWall outsetBy: 3.
	
	^ side = #left
		ifTrue: [mergedWall left @ point y]
		ifFalse: [mergedWall right @ point y]