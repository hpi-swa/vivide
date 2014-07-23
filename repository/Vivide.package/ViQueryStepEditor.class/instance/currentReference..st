accessing - properties
currentReference: aQueryStep

	self ui referenceEdit theText: (aQueryStep ifNil: [''] ifNotNil: [:s | s id]).