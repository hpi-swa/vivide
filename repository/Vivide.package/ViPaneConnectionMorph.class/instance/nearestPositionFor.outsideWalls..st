as yet unclassified
nearestPositionFor: point outsideWalls: rects

	| mergedWall insideWalls |
	insideWalls := rects select: [:r | r containsPoint: point].
	insideWalls ifEmpty: [^ point].
	
	mergedWall := insideWalls first.
	2 to: insideWalls size do: [:index |
		mergedWall := mergedWall quickMerge: (insideWalls at: index)].
	
	^ (mergedWall outsetBy: 3) pointNearestTo: point