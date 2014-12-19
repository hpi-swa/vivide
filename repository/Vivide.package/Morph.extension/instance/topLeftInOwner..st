*vivide-layout
topLeftInOwner: aPoint
	"Like #extentInOwner: but for the top left position."

	| delta |
	delta := (aPoint - self topLeft) rounded.
	delta = (0@0) ifTrue: [^ self].

	self withAllOwnersDo: [:m |
		"Assume that the world or a morph without layout policy allows for custom resizing of submorphs."
		((m owner == m world or: [m owner layoutPolicy isNil]) or: [m owner isNil])
			ifTrue: [
				m topLeft: m topLeft + delta.
				self flag: #fullBoundsNeeded. "mt: ...if called without #extentInOwner!"
				^ self "fast path"]].