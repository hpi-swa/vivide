ui - private
initializePanel
	"This code is auto-generated. DO NOT modify it because another generation step will overwrite all changes."
	
	|  |
	
	panel := UiContainer new.
	panel changeTableLayout.
	panel extent: (304@91).
	panel position: (0@0).
	panel hResizing: (#rigid).
	panel vResizing: (#rigid).
	panel minWidth: (2).
	panel minHeight: (2).
	panel cellInset: (2).
	panel cellPositioning: (#center).
	panel cellSpacing: (#none).
	panel layoutInset: (2).
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
	panel balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1.0 alpha: 0.941)).
	panel color: (Color transparent).
	panel borderWidth: (0).
	panel borderStyle2: (#simple).
	panel borderColor: (Color black).
	panel setProperty: #objectName toValue: 'panel'.
	nameEdit := UiLineEdit new.
	nameEdit extent: (300@20).
	nameEdit position: (2@3).
	nameEdit hResizing: (#spaceFill).
	nameEdit vResizing: (#rigid).
	nameEdit minWidth: (2).
	nameEdit minHeight: (2).
	nameEdit cellInset: (0).
	nameEdit cellPositioning: (#center).
	nameEdit cellSpacing: (#none).
	nameEdit layoutInset: (0).
	nameEdit listCentering: (#topLeft).
	nameEdit listDirection: (#topToBottom).
	nameEdit listSpacing: (#none).
	nameEdit maxCellSize: (1073741823).
	nameEdit minCellSize: (0).
	nameEdit wrapCentering: (#topLeft).
	nameEdit wrapDirection: (#none).
	nameEdit frameFractions: (0@0 corner: 1@1).
	nameEdit frameOffsets: (0@0 corner: 0@0).
	nameEdit balloonText: (nil).
	nameEdit balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1.0 alpha: 0.941)).
	nameEdit widgetResizable: (false).
	nameEdit horizontalScrollBarPolicy: (#alwaysOff).
	nameEdit verticalScrollBarPolicy: (#alwaysOff).
	nameEdit outerBorderWidth: (1).
	nameEdit scrollBarThickness: (9).
	nameEdit theText: ('').
	nameEdit readOnly: (false).
	nameEdit autoConvert: (false).
	nameEdit autoAccept: (false).
	nameEdit acceptOnFocusLost: (false).
	nameEdit scrollingMode: (#none).
	nameEdit scrollingLimit: (10).
	nameEdit helpText: ('Type protocol name...').
	nameEdit hideCursor: (true).
	nameEdit setProperty: #objectName toValue: 'nameEdit'.
	panel addChild: nameEdit.
	dropTarget := ViMethodDropTarget new.
	dropTarget extent: (300@63).
	dropTarget position: (2@26).
	dropTarget hResizing: (#spaceFill).
	dropTarget vResizing: (#spaceFill).
	dropTarget minWidth: (2).
	dropTarget minHeight: (2).
	dropTarget cellInset: (0).
	dropTarget cellPositioning: (#center).
	dropTarget cellSpacing: (#none).
	dropTarget layoutInset: (0).
	dropTarget listCentering: (#topLeft).
	dropTarget listDirection: (#topToBottom).
	dropTarget listSpacing: (#none).
	dropTarget maxCellSize: (1073741823).
	dropTarget minCellSize: (0).
	dropTarget wrapCentering: (#topLeft).
	dropTarget wrapDirection: (#none).
	dropTarget frameFractions: (0@0 corner: 1@1).
	dropTarget frameOffsets: (0@0 corner: 0@0).
	dropTarget balloonText: (nil).
	dropTarget balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1.0 alpha: 0.941)).
	dropTarget setProperty: #objectName toValue: 'dropTarget'.
	panel addChild: dropTarget.
	panel setProperty: #uiClassName toValue: 'ViProtocolEditor'.