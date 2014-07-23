drawing
drawFooterOn: aCanvas

	footer ifNil: [^ self].

	footer asMorph
		bottomRight: self bottomRight - (5@0);
		fullDrawOn: aCanvas.