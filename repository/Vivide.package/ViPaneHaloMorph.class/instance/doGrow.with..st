drag/drop
doGrow: evt with: growHandle
	"Called while the mouse is down in the grow handle"

	| newSpan delta cellSize |
	evt hand obtainHalo: self.

	target extent: (evt cursorPoint - target topLeft - positionOffset).
"	target fullBounds."
"	Transcript cr; show: evt cursorPoint - target topLeft."
	growHandle position: evt cursorPoint - (growHandle extent // 2) .
	self extent: target worldBoundsForHalo extent" (evt cursorPoint - target topLeft)".
"	self layoutChanged."