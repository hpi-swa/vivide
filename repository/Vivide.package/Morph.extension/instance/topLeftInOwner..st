*vivide-layout
topLeftInOwner: aPoint
	"Like #extentInOwner: but for the top left position."

	| delta owner |
	delta := aPoint - self topLeft.
	delta = (0@0) ifTrue: [^ self].
	owner := self.
	[owner notNil] whileTrue: [
		owner hResizing = #spaceFill
			ifFalse: [owner vResizing ~= #spaceFill
				ifTrue: [
					"Transcript cr; show: owner asString, ' new topLeft: ', delta."
					owner topLeft: owner topLeft + delta.
					^ self "fast path"]
				ifFalse: [owner left: owner left + delta x. owner := nil]]
			ifTrue: [owner := owner owner]].
	owner := self.
	[owner notNil] whileTrue: [
		owner vResizing = #spaceFill
			ifFalse: [owner top: owner top + delta y. owner := nil]
			ifTrue: [owner := owner owner]].