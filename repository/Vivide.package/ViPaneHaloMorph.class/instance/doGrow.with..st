drag/drop
doGrow: evt with: growHandle
	"Called while the mouse is down in the grow handle"

	positionOffset ifNil: [^ self].

	evt hand obtainHalo: self.
	self target extentInOwner: ((evt cursorPoint - self target boundsInWorld topLeft - positionOffset) max: 25@25).

	growHandle center: evt cursorPoint + (growHandle valueOfProperty: #clickOffset) .
	self extent: target worldBoundsForHalo extent.