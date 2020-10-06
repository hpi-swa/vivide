graph
endDrag: evt on: morph

	evt yellowButtonChanged ifTrue: [^ self invokeMenuOn: morph].

	morph removeProperty: #dragStart.
	self changed. "draw selection rect"