ui - private
initializePanel
	"This code is auto-generated. DO NOT modify it because another generation step will overwrite all changes."
	
	| unnamedMorph1 |
	
	panel := UiContainer new.
	panel changeTableLayout.
	panel extent: (196@109).
	panel position: (0@0).
	panel hResizing: (#rigid).
	panel vResizing: (#shrinkWrap).
	panel minWidth: (2).
	panel minHeight: (2).
	panel cellInset: (4).
	panel cellPositioning: (#center).
	panel cellSpacing: (#none).
	panel layoutInset: (4).
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
	panel balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.925)).
	panel color: (Color transparent).
	panel borderWidth: (0).
	panel borderStyle2: (#simple).
	panel borderColor: (Color black).
	panel setProperty: #objectName toValue: 'panel'.
	unnamedMorph1 := UiContainer new.
	unnamedMorph1 changeTableLayout.
	unnamedMorph1 extent: (188@22).
	unnamedMorph1 position: (4@4).
	unnamedMorph1 hResizing: (#spaceFill).
	unnamedMorph1 vResizing: (#shrinkWrap).
	unnamedMorph1 minWidth: (2).
	unnamedMorph1 minHeight: (2).
	unnamedMorph1 cellInset: (4).
	unnamedMorph1 cellPositioning: (#center).
	unnamedMorph1 cellSpacing: (#none).
	unnamedMorph1 layoutInset: (0).
	unnamedMorph1 listCentering: (#topLeft).
	unnamedMorph1 listDirection: (#leftToRight).
	unnamedMorph1 listSpacing: (#none).
	unnamedMorph1 maxCellSize: (1073741823).
	unnamedMorph1 minCellSize: (0).
	unnamedMorph1 wrapCentering: (#topLeft).
	unnamedMorph1 wrapDirection: (#none).
	unnamedMorph1 frameFractions: (0@0 corner: 1@1).
	unnamedMorph1 frameOffsets: (0@0 corner: 0@0).
	unnamedMorph1 balloonText: (nil).
	unnamedMorph1 balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.925)).
	unnamedMorph1 color: (Color transparent).
	unnamedMorph1 borderWidth: (0).
	unnamedMorph1 borderStyle2: (#simple).
	unnamedMorph1 borderColor: (Color black).
	iconBtn := UiToolButton new.
	iconBtn changeTableLayout.
	iconBtn extent: (22@18).
	iconBtn position: (5@6).
	iconBtn hResizing: (#shrinkWrap).
	iconBtn vResizing: (#shrinkWrap).
	iconBtn minWidth: (2).
	iconBtn minHeight: (2).
	iconBtn cellInset: (4).
	iconBtn cellPositioning: (#center).
	iconBtn cellSpacing: (#none).
	iconBtn layoutInset: (2@0 corner: 2@0).
	iconBtn listCentering: (#topLeft).
	iconBtn listDirection: (#leftToRight).
	iconBtn listSpacing: (#none).
	iconBtn maxCellSize: (1073741823).
	iconBtn minCellSize: (0).
	iconBtn wrapCentering: (#topLeft).
	iconBtn wrapDirection: (#none).
	iconBtn frameFractions: (0@0 corner: 1@1).
	iconBtn frameOffsets: (0@0 corner: 0@0).
	iconBtn balloonText: (nil).
	iconBtn balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.925)).
	iconBtn enabled: (true).
	iconBtn setProperty: #iconByDesigner toValue: 'UiDiagonaIcons icon0135Normal'.
	iconBtn icon: (UiDiagonaIcons icon0135Normal).
	iconBtn text: ('ToolButton').
	iconBtn color: ((Color r: 0.85 g: 0.85 b: 0.85)).
	iconBtn checkable: (false).
	iconBtn checked: (false).
	iconBtn autoExclusive: (false).
	iconBtn autoRaise: (false).
	iconBtn buttonStyle: (#iconOnly).
	iconBtn setProperty: #objectName toValue: 'iconBtn'.
	unnamedMorph1 addChild: iconBtn.
	tagnameEdit := UiLineEdit new.
	tagnameEdit extent: (160@20).
	tagnameEdit position: (32@5).
	tagnameEdit hResizing: (#spaceFill).
	tagnameEdit vResizing: (#rigid).
	tagnameEdit minWidth: (2).
	tagnameEdit minHeight: (2).
	tagnameEdit cellInset: (0).
	tagnameEdit cellPositioning: (#center).
	tagnameEdit cellSpacing: (#none).
	tagnameEdit layoutInset: (0).
	tagnameEdit listCentering: (#topLeft).
	tagnameEdit listDirection: (#topToBottom).
	tagnameEdit listSpacing: (#none).
	tagnameEdit maxCellSize: (1073741823).
	tagnameEdit minCellSize: (0).
	tagnameEdit wrapCentering: (#topLeft).
	tagnameEdit wrapDirection: (#none).
	tagnameEdit frameFractions: (0@0 corner: 1@1).
	tagnameEdit frameOffsets: (0@0 corner: 0@0).
	tagnameEdit balloonText: (nil).
	tagnameEdit balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.925)).
	tagnameEdit widgetResizable: (false).
	tagnameEdit horizontalScrollBarPolicy: (#alwaysOff).
	tagnameEdit verticalScrollBarPolicy: (#alwaysOff).
	tagnameEdit outerBorderWidth: (1).
	tagnameEdit scrollBarThickness: (9).
	tagnameEdit theText: ('').
	tagnameEdit readOnly: (false).
	tagnameEdit autoConvert: (false).
	tagnameEdit autoAccept: (false).
	tagnameEdit acceptOnFocusLost: (false).
	tagnameEdit scrollingMode: (#none).
	tagnameEdit scrollingLimit: (10).
	tagnameEdit helpText: ('Type tag name here...').
	tagnameEdit hideCursor: (true).
	tagnameEdit setProperty: #objectName toValue: 'tagnameEdit'.
	unnamedMorph1 addChild: tagnameEdit.
	panel addChild: unnamedMorph1.
	descriptionEdit := UiTextEdit new.
	descriptionEdit extent: (188@19).
	descriptionEdit position: (4@31).
	descriptionEdit hResizing: (#spaceFill).
	descriptionEdit vResizing: (#rigid).
	descriptionEdit minWidth: (2).
	descriptionEdit minHeight: (2).
	descriptionEdit cellInset: (0).
	descriptionEdit cellPositioning: (#center).
	descriptionEdit cellSpacing: (#none).
	descriptionEdit layoutInset: (0).
	descriptionEdit listCentering: (#topLeft).
	descriptionEdit listDirection: (#topToBottom).
	descriptionEdit listSpacing: (#none).
	descriptionEdit maxCellSize: (1073741823).
	descriptionEdit minCellSize: (0).
	descriptionEdit wrapCentering: (#topLeft).
	descriptionEdit wrapDirection: (#none).
	descriptionEdit frameFractions: (0@0 corner: 1@1).
	descriptionEdit frameOffsets: (0@0 corner: 0@0).
	descriptionEdit balloonText: (nil).
	descriptionEdit balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.925)).
	descriptionEdit widgetResizable: (true).
	descriptionEdit horizontalScrollBarPolicy: (#alwaysOff).
	descriptionEdit verticalScrollBarPolicy: (#alwaysOff).
	descriptionEdit outerBorderWidth: (1).
	descriptionEdit scrollBarThickness: (9).
	descriptionEdit theText: ('Description...').
	descriptionEdit readOnly: (false).
	descriptionEdit autoConvert: (false).
	descriptionEdit autoAccept: (false).
	descriptionEdit acceptOnFocusLost: (false).
	descriptionEdit scrollingMode: (#limit).
	descriptionEdit scrollingLimit: (5).
	descriptionEdit setProperty: #objectName toValue: 'descriptionEdit'.
	panel addChild: descriptionEdit.
	dropTarget := ViMethodDropTarget new.
	dropTarget extent: (188@50).
	dropTarget position: (4@55).
	dropTarget hResizing: (#spaceFill).
	dropTarget vResizing: (#rigid).
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
	dropTarget balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.949)).
	dropTarget setProperty: #objectName toValue: 'dropTarget'.
	panel addChild: dropTarget.
	panel setProperty: #uiClassName toValue: 'ViTagEditor'.