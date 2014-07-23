accessing
objects: someObjects

	objects := nil.
	
	self objects addAll: (someObjects collect: [:obj |
		UiPropertyItemNode new
			at: #object put: obj;
			at: #text put: ((ViLabelStringService doObject: obj), '<font color="#AAAAAA"> ', (ViObjectOriginService doObject: obj), '</font>') asHtmlText;
			at: #icon put: (ViIconService doObject: obj);
			yourself]).

	self modelReset.