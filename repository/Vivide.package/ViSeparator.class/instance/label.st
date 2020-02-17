accessing
label

	^ label ifNil: [ViLabelStringService doObject: self object]