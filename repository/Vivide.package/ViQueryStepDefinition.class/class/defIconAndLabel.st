defaults
defIconAndLabel

	^ (ViQueryOrganizer default definitionById: #iconAndLabel) ifNil: [
		ViQueryMapDefinition new
			id: #iconAndLabel;
			sourceCode: '[:obj | {
	#text -> (ViLabelService doObject: obj).
	#icon -> (ViIconService doObject: obj)}]';
			mapType: #each;
			register;
			yourself]