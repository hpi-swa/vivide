item model - hierarchy
childAt: index inGroup: groupName

	| obj |
	self flag: #performance. "mt: Faster than #perform:?"
	obj := (self instVarNamed: groupName asLowercase) at: index.
	^ UiPropertyItemNode new
		at: #object put: obj;
		at: #text put: ('{1} <font color="#B2B7C1">{2}</font>' format: {
			(ViLabelStringService doObject: obj).
			(ViObjectOriginService doObject: obj)}) asHtmlText;
		at: #icon put: ((ViIconService doObject: obj) ifNil: [ViIconService blankIcon]);
		yourself