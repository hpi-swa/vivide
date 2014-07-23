ui - private
initializePanel
	"This code is auto-generated. DO NOT modify it because another generation step will overwrite all changes."
	
	| unnamedMorph1 unnamedMorph2 unnamedMorph3 |
	
	panel := UiContainer new.
	panel changeTableLayout.
	panel extent: (404@101).
	panel position: (0@0).
	panel hResizing: (#rigid).
	panel vResizing: (#shrinkWrap).
	panel minWidth: (2).
	panel minHeight: (2).
	panel cellInset: (2).
	panel cellPositioning: (#topLeft).
	panel cellSpacing: (#none).
	panel layoutInset: (2@2 corner: 2@0).
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
	panel balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.945)).
	panel color: (Color transparent).
	panel borderWidth: (0).
	panel borderStyle2: (#simple).
	panel borderColor: (Color black).
	panel setProperty: #objectName toValue: 'panel'.
	summaryLbl := UiLabel new.
	summaryLbl changeTableLayout.
	summaryLbl extent: (128@19).
	summaryLbl position: (2@2).
	summaryLbl hResizing: (#shrinkWrap).
	summaryLbl vResizing: (#shrinkWrap).
	summaryLbl minWidth: (2).
	summaryLbl minHeight: (2).
	summaryLbl cellInset: (0).
	summaryLbl cellPositioning: (#center).
	summaryLbl cellSpacing: (#none).
	summaryLbl layoutInset: (5@0 corner: 0@0).
	summaryLbl listCentering: (#topLeft).
	summaryLbl listDirection: (#leftToRight).
	summaryLbl listSpacing: (#none).
	summaryLbl maxCellSize: (1073741823).
	summaryLbl minCellSize: (0).
	summaryLbl wrapCentering: (#topLeft).
	summaryLbl wrapDirection: (#none).
	summaryLbl frameFractions: (0@0 corner: 1@1).
	summaryLbl frameOffsets: (0@0 corner: 0@0).
	summaryLbl balloonText: (nil).
	summaryLbl balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.933)).
	summaryLbl text: ('"Methods" , treeView').
	summaryLbl setProperty: #formByDesigner toValue: 'nil'.
	summaryLbl form: (nil).
	summaryLbl setProperty: #objectName toValue: 'summaryLbl'.
	panel addChild: summaryLbl.
	detailsBox := UiContainer new.
	detailsBox changeTableLayout.
	detailsBox extent: (400@22).
	detailsBox position: (2@23).
	detailsBox hResizing: (#spaceFill).
	detailsBox vResizing: (#shrinkWrap).
	detailsBox minWidth: (2).
	detailsBox minHeight: (2).
	detailsBox cellInset: (4).
	detailsBox cellPositioning: (#center).
	detailsBox cellSpacing: (#none).
	detailsBox layoutInset: (0).
	detailsBox listCentering: (#topLeft).
	detailsBox listDirection: (#leftToRight).
	detailsBox listSpacing: (#none).
	detailsBox maxCellSize: (1073741823).
	detailsBox minCellSize: (0).
	detailsBox wrapCentering: (#topLeft).
	detailsBox wrapDirection: (#none).
	detailsBox frameFractions: (0@0 corner: 1@1).
	detailsBox frameOffsets: (0@0 corner: 0@0).
	detailsBox balloonText: (nil).
	detailsBox balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.945)).
	detailsBox color: (Color transparent).
	detailsBox borderWidth: (0).
	detailsBox borderStyle2: (#simple).
	detailsBox borderColor: (Color black).
	detailsBox setProperty: #objectName toValue: 'detailsBox'.
	iconBtn := UiToolButton new.
	iconBtn changeTableLayout.
	iconBtn extent: (22@18).
	iconBtn position: (3@25).
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
	iconBtn balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.941)).
	iconBtn enabled: (true).
	iconBtn setProperty: #iconByDesigner toValue: 'ViIcons blankIcon'.
	iconBtn icon: (ViIcons blankIcon).
	iconBtn text: ('...').
	iconBtn color: ((Color r: 0.95 g: 0.95 b: 0.95)).
	iconBtn checkable: (false).
	iconBtn checked: (false).
	iconBtn autoExclusive: (false).
	iconBtn autoRaise: (false).
	iconBtn buttonStyle: (#iconOnly).
	iconBtn setProperty: #objectName toValue: 'iconBtn'.
	detailsBox addChild: iconBtn.
	labelEdit := UiLineEdit new.
	labelEdit extent: (202@20).
	labelEdit position: (30@24).
	labelEdit hResizing: (#spaceFill).
	labelEdit vResizing: (#rigid).
	labelEdit minWidth: (2).
	labelEdit minHeight: (2).
	labelEdit cellInset: (0).
	labelEdit cellPositioning: (#center).
	labelEdit cellSpacing: (#none).
	labelEdit layoutInset: (0).
	labelEdit listCentering: (#topLeft).
	labelEdit listDirection: (#topToBottom).
	labelEdit listSpacing: (#none).
	labelEdit maxCellSize: (1073741823).
	labelEdit minCellSize: (0).
	labelEdit wrapCentering: (#topLeft).
	labelEdit wrapDirection: (#none).
	labelEdit frameFractions: (0@0 corner: 1@1).
	labelEdit frameOffsets: (0@0 corner: 0@0).
	labelEdit balloonText: (nil).
	labelEdit balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.937)).
	labelEdit widgetResizable: (false).
	labelEdit horizontalScrollBarPolicy: (#alwaysOff).
	labelEdit verticalScrollBarPolicy: (#alwaysOff).
	labelEdit outerBorderWidth: (1).
	labelEdit scrollBarThickness: (9).
	labelEdit theText: ('').
	labelEdit readOnly: (false).
	labelEdit autoConvert: (false).
	labelEdit autoAccept: (false).
	labelEdit acceptOnFocusLost: (false).
	labelEdit scrollingMode: (#none).
	labelEdit scrollingLimit: (10).
	labelEdit helpText: ('Type label here...').
	labelEdit hideCursor: (true).
	labelEdit setProperty: #objectName toValue: 'labelEdit'.
	detailsBox addChild: labelEdit.
	viewCombo := UiComboBox new.
	viewCombo extent: (100@21).
	viewCombo position: (236@23).
	viewCombo hResizing: (#rigid).
	viewCombo vResizing: (#rigid).
	viewCombo minWidth: (2).
	viewCombo minHeight: (2).
	viewCombo cellInset: (0).
	viewCombo cellPositioning: (#center).
	viewCombo cellSpacing: (#none).
	viewCombo layoutInset: (0).
	viewCombo listCentering: (#topLeft).
	viewCombo listDirection: (#topToBottom).
	viewCombo listSpacing: (#none).
	viewCombo maxCellSize: (1073741823).
	viewCombo minCellSize: (0).
	viewCombo wrapCentering: (#topLeft).
	viewCombo wrapDirection: (#none).
	viewCombo frameFractions: (0@0 corner: 1@1).
	viewCombo frameOffsets: (0@0 corner: 0@0).
	viewCombo balloonText: (nil).
	viewCombo balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.941)).
	viewCombo readOnly: (true).
	viewCombo setProperty: #objectName toValue: 'viewCombo'.
	detailsBox addChild: viewCombo.
	unnamedMorph1 := UiContainer new.
	unnamedMorph1 extent: (60@15).
	unnamedMorph1 position: (342@27).
	unnamedMorph1 hResizing: (#rigid).
	unnamedMorph1 vResizing: (#rigid).
	unnamedMorph1 minWidth: (2).
	unnamedMorph1 minHeight: (2).
	unnamedMorph1 cellInset: (4).
	unnamedMorph1 cellPositioning: (#center).
	unnamedMorph1 cellSpacing: (#none).
	unnamedMorph1 layoutInset: (4).
	unnamedMorph1 listCentering: (#topLeft).
	unnamedMorph1 listDirection: (#topToBottom).
	unnamedMorph1 listSpacing: (#none).
	unnamedMorph1 maxCellSize: (1073741823).
	unnamedMorph1 minCellSize: (0).
	unnamedMorph1 wrapCentering: (#topLeft).
	unnamedMorph1 wrapDirection: (#none).
	unnamedMorph1 frameFractions: (0@0 corner: 1@1).
	unnamedMorph1 frameOffsets: (0@0 corner: 0@0).
	unnamedMorph1 balloonText: (nil).
	unnamedMorph1 balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.945)).
	unnamedMorph1 color: (Color transparent).
	unnamedMorph1 borderWidth: (0).
	unnamedMorph1 borderStyle2: (#simple).
	unnamedMorph1 borderColor: (Color black).
	detailsBox addChild: unnamedMorph1.
	panel addChild: detailsBox.
	unnamedMorph2 := UiContainer new.
	unnamedMorph2 changeTableLayout.
	unnamedMorph2 extent: (400@53).
	unnamedMorph2 position: (2@48).
	unnamedMorph2 hResizing: (#spaceFill).
	unnamedMorph2 vResizing: (#shrinkWrap).
	unnamedMorph2 minWidth: (2).
	unnamedMorph2 minHeight: (2).
	unnamedMorph2 cellInset: (4).
	unnamedMorph2 cellPositioning: (#topLeft).
	unnamedMorph2 cellSpacing: (#none).
	unnamedMorph2 layoutInset: (0).
	unnamedMorph2 listCentering: (#topLeft).
	unnamedMorph2 listDirection: (#leftToRight).
	unnamedMorph2 listSpacing: (#none).
	unnamedMorph2 maxCellSize: (1073741823).
	unnamedMorph2 minCellSize: (0).
	unnamedMorph2 wrapCentering: (#topLeft).
	unnamedMorph2 wrapDirection: (#none).
	unnamedMorph2 frameFractions: (0@0 corner: 1@1).
	unnamedMorph2 frameOffsets: (0@0 corner: 0@0).
	unnamedMorph2 balloonText: (nil).
	unnamedMorph2 balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.945)).
	unnamedMorph2 color: (Color transparent).
	unnamedMorph2 borderWidth: (0).
	unnamedMorph2 borderStyle2: (#simple).
	unnamedMorph2 borderColor: (Color black).
	unnamedMorph3 := UiContainer new.
	unnamedMorph3 changeTableLayout.
	unnamedMorph3 extent: (23@43).
	unnamedMorph3 position: (2@48).
	unnamedMorph3 hResizing: (#shrinkWrap).
	unnamedMorph3 vResizing: (#shrinkWrap).
	unnamedMorph3 minWidth: (2).
	unnamedMorph3 minHeight: (2).
	unnamedMorph3 cellInset: (4).
	unnamedMorph3 cellPositioning: (#center).
	unnamedMorph3 cellSpacing: (#none).
	unnamedMorph3 layoutInset: (0).
	unnamedMorph3 listCentering: (#topLeft).
	unnamedMorph3 listDirection: (#topToBottom).
	unnamedMorph3 listSpacing: (#none).
	unnamedMorph3 maxCellSize: (1073741823).
	unnamedMorph3 minCellSize: (0).
	unnamedMorph3 wrapCentering: (#topLeft).
	unnamedMorph3 wrapDirection: (#none).
	unnamedMorph3 frameFractions: (0@0 corner: 1@1).
	unnamedMorph3 frameOffsets: (0@0 corner: 0@0).
	unnamedMorph3 balloonText: (nil).
	unnamedMorph3 balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.945)).
	unnamedMorph3 color: (Color transparent).
	unnamedMorph3 borderWidth: (0).
	unnamedMorph3 borderStyle2: (#simple).
	unnamedMorph3 borderColor: (Color black).
	detailsBtn := ViNotificationToolButton new.
	detailsBtn changeTableLayout.
	detailsBtn extent: (22@18).
	detailsBtn position: (2@48).
	detailsBtn hResizing: (#shrinkWrap).
	detailsBtn vResizing: (#shrinkWrap).
	detailsBtn minWidth: (2).
	detailsBtn minHeight: (2).
	detailsBtn cellInset: (4).
	detailsBtn cellPositioning: (#center).
	detailsBtn cellSpacing: (#none).
	detailsBtn layoutInset: (2@0 corner: 2@0).
	detailsBtn listCentering: (#topLeft).
	detailsBtn listDirection: (#leftToRight).
	detailsBtn listSpacing: (#none).
	detailsBtn maxCellSize: (1073741823).
	detailsBtn minCellSize: (0).
	detailsBtn wrapCentering: (#topLeft).
	detailsBtn wrapDirection: (#none).
	detailsBtn frameFractions: (0@0 corner: 1@1).
	detailsBtn frameOffsets: (0@0 corner: 0@0).
	detailsBtn balloonText: (nil).
	detailsBtn balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.945)).
	detailsBtn enabled: (true).
	detailsBtn setProperty: #iconByDesigner toValue: 'UiDiagonaIcons icon0135Normal'.
	detailsBtn icon: (UiDiagonaIcons icon0135Normal).
	detailsBtn text: ('').
	detailsBtn color: ((Color r: 0.85 g: 0.85 b: 0.85)).
	detailsBtn checkable: (true).
	detailsBtn checked: (false).
	detailsBtn autoExclusive: (false).
	detailsBtn autoRaise: (true).
	detailsBtn buttonStyle: (#iconOnly).
	detailsBtn setProperty: #objectName toValue: 'detailsBtn'.
	unnamedMorph3 addChild: detailsBtn.
	typeBtn := ViNotificationToolButton new.
	typeBtn changeTableLayout.
	typeBtn extent: (22@18).
	typeBtn position: (2@72).
	typeBtn hResizing: (#shrinkWrap).
	typeBtn vResizing: (#shrinkWrap).
	typeBtn minWidth: (2).
	typeBtn minHeight: (2).
	typeBtn cellInset: (4).
	typeBtn cellPositioning: (#center).
	typeBtn cellSpacing: (#none).
	typeBtn layoutInset: (2@0 corner: 2@0).
	typeBtn listCentering: (#topLeft).
	typeBtn listDirection: (#leftToRight).
	typeBtn listSpacing: (#none).
	typeBtn maxCellSize: (1073741823).
	typeBtn minCellSize: (0).
	typeBtn wrapCentering: (#topLeft).
	typeBtn wrapDirection: (#none).
	typeBtn frameFractions: (0@0 corner: 1@1).
	typeBtn frameOffsets: (0@0 corner: 0@0).
	typeBtn balloonText: (nil).
	typeBtn balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.941)).
	typeBtn enabled: (true).
	typeBtn setProperty: #iconByDesigner toValue: 'UiFugueIcons documentArrowIcon'.
	typeBtn icon: (UiFugueIcons documentArrowIcon).
	typeBtn text: ('').
	typeBtn color: ((Color r: 0.85 g: 0.85 b: 0.85)).
	typeBtn checkable: (false).
	typeBtn checked: (false).
	typeBtn autoExclusive: (false).
	typeBtn autoRaise: (true).
	typeBtn buttonStyle: (#iconOnly).
	typeBtn setProperty: #objectName toValue: 'typeBtn'.
	unnamedMorph3 addChild: typeBtn.
	unnamedMorph2 addChild: unnamedMorph3.
	definitionEdit := ViQueryDefinitionEdit new.
	definitionEdit extent: (170@51).
	definitionEdit position: (30@48).
	definitionEdit hResizing: (#spaceFill).
	definitionEdit vResizing: (#rigid).
	definitionEdit minWidth: (2).
	definitionEdit minHeight: (2).
	definitionEdit cellInset: (0).
	definitionEdit cellPositioning: (#center).
	definitionEdit cellSpacing: (#none).
	definitionEdit layoutInset: (0).
	definitionEdit listCentering: (#topLeft).
	definitionEdit listDirection: (#topToBottom).
	definitionEdit listSpacing: (#none).
	definitionEdit maxCellSize: (1073741823).
	definitionEdit minCellSize: (0).
	definitionEdit wrapCentering: (#topLeft).
	definitionEdit wrapDirection: (#none).
	definitionEdit frameFractions: (0@0 corner: 1@1).
	definitionEdit frameOffsets: (0@0 corner: 0@0).
	definitionEdit balloonText: (nil).
	definitionEdit balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.945)).
	definitionEdit widgetResizable: (true).
	definitionEdit horizontalScrollBarPolicy: (#alwaysOff).
	definitionEdit verticalScrollBarPolicy: (#alwaysOff).
	definitionEdit outerBorderWidth: (1).
	definitionEdit scrollBarThickness: (9).
	definitionEdit theText: ('[:obj | obj asString. obj asIcon]').
	definitionEdit readOnly: (false).
	definitionEdit autoConvert: (false).
	definitionEdit autoAccept: (false).
	definitionEdit acceptOnFocusLost: (false).
	definitionEdit scrollingMode: (#never).
	definitionEdit scrollingLimit: (10).
	definitionEdit inputKind: (nil).
	definitionEdit outputKind: (nil).
	definitionEdit id: (nil).
	definitionEdit setProperty: #objectName toValue: 'definitionEdit'.
	unnamedMorph2 addChild: definitionEdit.
	referenceBox := UiContainer new.
	referenceBox changeTableLayout.
	referenceBox extent: (198@44).
	referenceBox position: (204@48).
	referenceBox hResizing: (#spaceFill).
	referenceBox vResizing: (#shrinkWrap).
	referenceBox minWidth: (2).
	referenceBox minHeight: (2).
	referenceBox cellInset: (4).
	referenceBox cellPositioning: (#center).
	referenceBox cellSpacing: (#none).
	referenceBox layoutInset: (0@22 corner: 0@0).
	referenceBox listCentering: (#topLeft).
	referenceBox listDirection: (#leftToRight).
	referenceBox listSpacing: (#none).
	referenceBox maxCellSize: (1073741823).
	referenceBox minCellSize: (0).
	referenceBox wrapCentering: (#topLeft).
	referenceBox wrapDirection: (#none).
	referenceBox frameFractions: (0@0 corner: 1@1).
	referenceBox frameOffsets: (0@0 corner: 0@0).
	referenceBox balloonText: (nil).
	referenceBox balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.945)).
	referenceBox color: (Color transparent).
	referenceBox borderWidth: (0).
	referenceBox borderStyle2: (#simple).
	referenceBox borderColor: (Color black).
	referenceBox setProperty: #objectName toValue: 'referenceBox'.
	referenceEdit := UiLineEdit new.
	referenceEdit extent: (170@20).
	referenceEdit position: (204@71).
	referenceEdit hResizing: (#spaceFill).
	referenceEdit vResizing: (#rigid).
	referenceEdit minWidth: (2).
	referenceEdit minHeight: (2).
	referenceEdit cellInset: (0).
	referenceEdit cellPositioning: (#center).
	referenceEdit cellSpacing: (#none).
	referenceEdit layoutInset: (0).
	referenceEdit listCentering: (#topLeft).
	referenceEdit listDirection: (#topToBottom).
	referenceEdit listSpacing: (#none).
	referenceEdit maxCellSize: (1073741823).
	referenceEdit minCellSize: (0).
	referenceEdit wrapCentering: (#topLeft).
	referenceEdit wrapDirection: (#none).
	referenceEdit frameFractions: (0@0 corner: 1@1).
	referenceEdit frameOffsets: (0@0 corner: 0@0).
	referenceEdit balloonText: (nil).
	referenceEdit balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.941)).
	referenceEdit widgetResizable: (false).
	referenceEdit horizontalScrollBarPolicy: (#alwaysOff).
	referenceEdit verticalScrollBarPolicy: (#alwaysOff).
	referenceEdit outerBorderWidth: (1).
	referenceEdit scrollBarThickness: (9).
	referenceEdit theText: ('').
	referenceEdit readOnly: (false).
	referenceEdit autoConvert: (false).
	referenceEdit autoAccept: (false).
	referenceEdit acceptOnFocusLost: (true).
	referenceEdit scrollingMode: (#none).
	referenceEdit scrollingLimit: (10).
	referenceEdit helpText: ('Type step id here...').
	referenceEdit hideCursor: (true).
	referenceEdit setProperty: #objectName toValue: 'referenceEdit'.
	referenceBox addChild: referenceEdit.
	openReferenceBtn := UiToolButton new.
	openReferenceBtn changeTableLayout.
	openReferenceBtn extent: (22@18).
	openReferenceBtn position: (379@72).
	openReferenceBtn hResizing: (#shrinkWrap).
	openReferenceBtn vResizing: (#shrinkWrap).
	openReferenceBtn minWidth: (2).
	openReferenceBtn minHeight: (2).
	openReferenceBtn cellInset: (4).
	openReferenceBtn cellPositioning: (#center).
	openReferenceBtn cellSpacing: (#none).
	openReferenceBtn layoutInset: (2@0 corner: 2@0).
	openReferenceBtn listCentering: (#topLeft).
	openReferenceBtn listDirection: (#leftToRight).
	openReferenceBtn listSpacing: (#none).
	openReferenceBtn maxCellSize: (1073741823).
	openReferenceBtn minCellSize: (0).
	openReferenceBtn wrapCentering: (#topLeft).
	openReferenceBtn wrapDirection: (#none).
	openReferenceBtn frameFractions: (0@0 corner: 1@1).
	openReferenceBtn frameOffsets: (0@0 corner: 0@0).
	openReferenceBtn balloonText: ('Explore it').
	openReferenceBtn balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.933)).
	openReferenceBtn enabled: (true).
	openReferenceBtn setProperty: #iconByDesigner toValue: 'UiFugueIcons magnifierIcon'.
	openReferenceBtn icon: (UiFugueIcons magnifierIcon).
	openReferenceBtn text: ('').
	openReferenceBtn color: ((Color r: 1 g: 0.871 b: 0.0)).
	openReferenceBtn checkable: (false).
	openReferenceBtn checked: (false).
	openReferenceBtn autoExclusive: (false).
	openReferenceBtn autoRaise: (true).
	openReferenceBtn buttonStyle: (#iconOnly).
	openReferenceBtn setProperty: #objectName toValue: 'openReferenceBtn'.
	referenceBox addChild: openReferenceBtn.
	unnamedMorph2 addChild: referenceBox.
	panel addChild: unnamedMorph2.
	panel setProperty: #uiClassName toValue: 'ViQueryStepEditor'.