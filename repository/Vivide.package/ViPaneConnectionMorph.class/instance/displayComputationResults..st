as yet unclassified
displayComputationResults: spec
	
	| done start end startOffset w |
	done := spec first.
	start := spec second.
	end := spec third.
	startOffset := spec fourth.
	
	w := Project current world width // self grid x.
	
	done doWithIndex: [:blocked :doneIndex |
	| cell pixel |
	blocked ifNotNil: [
		cell := ((doneIndex-1) \\ w) +1 @ (((doneIndex-1) // w) + 1).
		pixel := cell value * self grid + startOffset.
		Display getCanvas
			fillRectangle: (5@5 center: pixel)
			color: (blocked ifTrue: [Color red] ifFalse: [Color green]) ]  ].

	"Draw start and end"
	{start. end} do: [ :point |
		Display getCanvas
			fillRectangle: (10@10 center: point * self grid + startOffset)
			color: Color blue].