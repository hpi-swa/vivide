drawing
drawMessageOn: aCanvas

	self flag: #composition. "mt: Maybe add text morph as a submorph and update its position?"
	text topLeft: self topLeft + (self extent - text extent // 2).
	text fullDrawOn: aCanvas.