drag/drop
startGrow: evt with: growHandle
	"Initialize resizing of my target.  Launch a command representing it, to support Undo"

	| botRt |
	evt hand obtainHalo: self.
	self removeAllMorphsIn: (self submorphs copyWithout: growHandle).
	
	"botRt := target point: target bottomRight in: owner.
	"
	
	"Transcript cr; show: evt cursorPoint; cr; show: target bottomRight."
	positionOffset := evt cursorPoint - target bottomRight.
	"(self world viewBox containsPoint: botRt)
		ifTrue: [evt cursorPoint - botRt]
		ifFalse: [0@0].
"
