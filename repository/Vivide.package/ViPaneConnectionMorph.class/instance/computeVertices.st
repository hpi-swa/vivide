as yet unclassified
computeVertices

	| w h done next nextIndex finished path startOffset virtualWalls start end endLink |
	self deferUpdates ifTrue: [^ self].
	
	virtualWalls := self walls collect: [:morph | morph bounds outsetBy: self grid].

	"Is the start inside a virtual wall?"
	(self nearestPositionFor: self startPosition outsideWalls: virtualWalls onSide: #right)
		in: [:extra |			
			start := extra // self grid.
			startOffset := extra - (start * self grid)].

	"Is the end inside a virtual wall?"
	(self nearestPositionFor: self endPosition outsideWalls: virtualWalls onSide: #left)
		in: [:extra | end := extra // self grid].

	w := Project current world width // self grid x.
	h := Project current world height // self grid y.

	done := Array new: w * h.

	next := OrderedCollection new: done size * 3. "* 8 ?"
	nextIndex := 0.

	next add: start asLink.

	finished := false.
	[finished or: [nextIndex >= next size]] whileFalse: [
		| cell pixel doneIndex |
	
		nextIndex := nextIndex + 1.
	
		cell := (next at: nextIndex).
		doneIndex := (cell value y - 1) * w + cell value x. "row major"
	
		"0) Skip if finished"
		(done at: doneIndex) ifNil: [
	
			"1) Check wall"
			pixel := cell value * self grid + startOffset.
			(virtualWalls anySatisfy: [:wall | wall containsPoint: pixel]) in: [:blocked |
				done
					at: doneIndex
					put: blocked.

				"2) Schedule next cells for unblocked cells"
				blocked ifFalse: [
					self walk + cell value do: [:nextCell |
						(nextCell > (0@0) and: [nextCell <= (w@h)]) ifTrue: [
							doneIndex := (nextCell y - 1) * w + nextCell x. "row major"
							(done at: doneIndex) ifNil: [
								next add: (nextCell asLink nextLink: cell; yourself).
								
								(finished not and: [nextCell = end])
									ifTrue: [finished := true. endLink := next last].
								] ] ] ] ] ] ].

	"Clean up path. TODO"
	finished
		ifFalse: [path := {self endPosition. self startPosition}.]
		ifTrue: [
			path := (LinkedList new
						"add: endLink nextLink;"
						add: (next at: nextIndex);
						collect: [:ea | ea * self grid + startOffset]).
			path add: self endPosition asLink beforeLink: path firstLink.
			path add: self startPosition asLink afterLink: path lastLink.
			
				].

	self setVertices: path.
	
	" *** DEBUGGING TOOLS *** "
	"Project current world redraw.
	Project current addDeferredUIMessage: [
		self displayComputationResults: {done. start. end. startOffset}]."