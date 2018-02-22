updating
updateLayout

	self removeAllMorphs.
	
	self orientation = #horizontal ifTrue: [
		self
			hResizing: #spaceFill;
			vResizing: #rigid].
	
	self orientation = #vertical ifTrue: [
		self
			hResizing: #rigid;
			vResizing: #spaceFill].

	self addGrips.