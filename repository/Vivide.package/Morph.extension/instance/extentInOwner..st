*vivide-layout
extentInOwner: aPoint
	"If this morph's extent is controlled by its owner, resize the owner to make this morph have the new size."
	
	| delta owner |
	delta := aPoint - self extent.
	owner := self.
	[owner notNil] whileTrue: [
		owner hResizing = #spaceFill
			ifFalse: [owner width: owner width + delta x. owner := nil]
			ifTrue: [owner := owner owner]].
	owner := self.
	[owner notNil] whileTrue: [
		owner vResizing = #spaceFill
			ifFalse: [owner height: owner height + delta y. owner := nil]
			ifTrue: [owner := owner owner]].