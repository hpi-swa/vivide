ui - private
initializePanel
	"This code is auto-generated. DO NOT modify it because another generation step will overwrite all changes."
	
	|  |
	
	panel := UiContainer new.
	panel changeTableLayout.
	panel extent: (244@569).
	panel position: (0@0).
	panel hResizing: (#rigid).
	panel vResizing: (#rigid).
	panel minWidth: (2).
	panel minHeight: (2).
	panel cellInset: (0).
	panel cellPositioning: (#center).
	panel cellSpacing: (#none).
	panel layoutInset: (0).
	panel listCentering: (#topLeft).
	panel listDirection: (#topToBottom).
	panel listSpacing: (#none).
	panel maxCellSize: (1073741823).
	panel minCellSize: (0).
	panel wrapCentering: (#topLeft).
	panel wrapDirection: (#none).
	panel frameFractions: (0@0 corner: 1@1).
	panel frameOffsets: (0@0 corner: 0@0).
	panel balloonText: (nil).
	panel balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.922)).
	panel color: (Color transparent).
	panel borderWidth: (0).
	panel borderStyle2: (#simple).
	panel borderColor: (Color black).
	panel setProperty: #objectName toValue: 'panel'.
	codeArea := UiScrollArea new.
	codeArea extent: (244@569).
	codeArea position: (0@0).
	codeArea hResizing: (#spaceFill).
	codeArea vResizing: (#spaceFill).
	codeArea minWidth: (2).
	codeArea minHeight: (2).
	codeArea cellInset: (0).
	codeArea cellPositioning: (#center).
	codeArea cellSpacing: (#none).
	codeArea layoutInset: (0).
	codeArea listCentering: (#topLeft).
	codeArea listDirection: (#topToBottom).
	codeArea listSpacing: (#none).
	codeArea maxCellSize: (1073741823).
	codeArea minCellSize: (0).
	codeArea wrapCentering: (#topLeft).
	codeArea wrapDirection: (#none).
	codeArea frameFractions: (0@0 corner: 1@1).
	codeArea frameOffsets: (0@0 corner: 0@0).
	codeArea balloonText: (nil).
	codeArea balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.922)).
	codeArea widgetResizable: (true).
	codeArea horizontalScrollBarPolicy: (#alwaysOff).
	codeArea verticalScrollBarPolicy: (#asNeeded).
	codeArea outerBorderWidth: (0).
	codeArea scrollBarThickness: (9).
	codeArea setProperty: #objectName toValue: 'codeArea'.
	panel addChild: codeArea.
	panel setProperty: #uiClassName toValue: 'ViArtifactListPage'.