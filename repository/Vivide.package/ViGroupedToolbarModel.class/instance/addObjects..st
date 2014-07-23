add/remove
addObjects: someObjects

	self objects addAll: (someObjects collect: [:obj |
		UiPropertyItemNode new
			at: #object put: obj;
			at: #text put: ((ViLabelStringService doObject: obj), '<font color="#AAAAAA"> ', (ViObjectOriginService doObject: obj), '</font>') asHtmlText;
			at: #icon put: (ViIconService doObject: obj);
			yourself]).
	self
		childrenInsertedFrom: self objects size - someObjects size + 1
		to: self objects size
		inGroup: #objects.