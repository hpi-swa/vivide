ui - private
initializePanel
	"This code is auto-generated. DO NOT modify it because another generation step will overwrite all changes."
	
	| unnamedMorph1 |
	
	panel := UiContainer new.
	panel changeTableLayout.
	panel extent: (360@394).
	panel position: (0@0).
	panel hResizing: (#rigid).
	panel vResizing: (#rigid).
	panel minWidth: (2).
	panel minHeight: (2).
	panel cellInset: (2).
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
	treeView := UiTreeView new.
	treeView extent: (360@370).
	treeView position: (0@0).
	treeView hResizing: (#spaceFill).
	treeView vResizing: (#spaceFill).
	treeView minWidth: (2).
	treeView minHeight: (2).
	treeView cellInset: (0).
	treeView cellPositioning: (#center).
	treeView cellSpacing: (#none).
	treeView layoutInset: (0).
	treeView listCentering: (#topLeft).
	treeView listDirection: (#topToBottom).
	treeView listSpacing: (#none).
	treeView maxCellSize: (1073741823).
	treeView minCellSize: (0).
	treeView wrapCentering: (#topLeft).
	treeView wrapDirection: (#none).
	treeView frameFractions: (0@0 corner: 1@1).
	treeView frameOffsets: (0@0 corner: 0@0).
	treeView balloonText: (nil).
	treeView balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.922)).
	treeView widgetResizable: (false).
	treeView horizontalScrollBarPolicy: (#asNeeded).
	treeView verticalScrollBarPolicy: (#asNeeded).
	treeView outerBorderWidth: (0).
	treeView scrollBarThickness: (9).
	treeView modelClass: (nil).
	treeView horizontalHeaderVisible: (true).
	treeView verticalHeaderVisible: (false).
	treeView selectionBehavior: (#selectRows).
	treeView selectionMode: (UiViewSingleSelection).
	treeView setProperty: #objectName toValue: 'treeView'.
	panel addChild: treeView.
	searchContainer := UiContainer new.
	searchContainer changeTableLayout.
	searchContainer extent: (360@22).
	searchContainer position: (0@372).
	searchContainer hResizing: (#spaceFill).
	searchContainer vResizing: (#shrinkWrap).
	searchContainer minWidth: (2).
	searchContainer minHeight: (2).
	searchContainer cellInset: (2).
	searchContainer cellPositioning: (#center).
	searchContainer cellSpacing: (#none).
	searchContainer layoutInset: (0).
	searchContainer listCentering: (#topLeft).
	searchContainer listDirection: (#leftToRight).
	searchContainer listSpacing: (#none).
	searchContainer maxCellSize: (1073741823).
	searchContainer minCellSize: (0).
	searchContainer wrapCentering: (#topLeft).
	searchContainer wrapDirection: (#none).
	searchContainer frameFractions: (0@0 corner: 1@1).
	searchContainer frameOffsets: (0@0 corner: 0@0).
	searchContainer balloonText: (nil).
	searchContainer balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.922)).
	searchContainer color: (Color transparent).
	searchContainer borderWidth: (0).
	searchContainer borderStyle2: (#simple).
	searchContainer borderColor: (Color black).
	searchContainer setProperty: #objectName toValue: 'searchContainer'.
	searchEdit := UiLineEdit new.
	searchEdit extent: (278@20).
	searchEdit position: (0@373).
	searchEdit hResizing: (#spaceFill).
	searchEdit vResizing: (#rigid).
	searchEdit minWidth: (2).
	searchEdit minHeight: (2).
	searchEdit cellInset: (0).
	searchEdit cellPositioning: (#center).
	searchEdit cellSpacing: (#none).
	searchEdit layoutInset: (0).
	searchEdit listCentering: (#topLeft).
	searchEdit listDirection: (#topToBottom).
	searchEdit listSpacing: (#none).
	searchEdit maxCellSize: (1073741823).
	searchEdit minCellSize: (0).
	searchEdit wrapCentering: (#topLeft).
	searchEdit wrapDirection: (#none).
	searchEdit frameFractions: (0@0 corner: 1@1).
	searchEdit frameOffsets: (0@0 corner: 0@0).
	searchEdit balloonText: (nil).
	searchEdit balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.922)).
	searchEdit widgetResizable: (false).
	searchEdit horizontalScrollBarPolicy: (#alwaysOff).
	searchEdit verticalScrollBarPolicy: (#alwaysOff).
	searchEdit outerBorderWidth: (1).
	searchEdit scrollBarThickness: (9).
	searchEdit theText: ('').
	searchEdit readOnly: (false).
	searchEdit autoConvert: (false).
	searchEdit autoAccept: (false).
	searchEdit acceptOnFocusLost: (true).
	searchEdit scrollingMode: (#none).
	searchEdit scrollingLimit: (10).
	searchEdit helpText: ('Search...').
	searchEdit hideCursor: (true).
	searchEdit setProperty: #objectName toValue: 'searchEdit'.
	searchContainer addChild: searchEdit.
	unnamedMorph1 := UiContainer new.
	unnamedMorph1 extent: (5@10).
	unnamedMorph1 position: (280@378).
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
	searchContainer addChild: unnamedMorph1.
	addQueryBtn := UiToolButton new.
	addQueryBtn changeTableLayout.
	addQueryBtn extent: (21@18).
	addQueryBtn position: (288@374).
	addQueryBtn hResizing: (#shrinkWrap).
	addQueryBtn vResizing: (#shrinkWrap).
	addQueryBtn minWidth: (2).
	addQueryBtn minHeight: (2).
	addQueryBtn cellInset: (4).
	addQueryBtn cellPositioning: (#center).
	addQueryBtn cellSpacing: (#none).
	addQueryBtn layoutInset: (2@0 corner: 1@0).
	addQueryBtn listCentering: (#topLeft).
	addQueryBtn listDirection: (#leftToRight).
	addQueryBtn listSpacing: (#none).
	addQueryBtn maxCellSize: (1073741823).
	addQueryBtn minCellSize: (0).
	addQueryBtn wrapCentering: (#topLeft).
	addQueryBtn wrapDirection: (#none).
	addQueryBtn frameFractions: (0@0 corner: 1@1).
	addQueryBtn frameOffsets: (0@0 corner: 0@0).
	addQueryBtn balloonText: ('Toggle scripts').
	addQueryBtn balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.922)).
	addQueryBtn enabled: (true).
	addQueryBtn setProperty: #iconByDesigner toValue: 'ViIcons control090SmallSunkenIcon'.
	addQueryBtn icon: (ViIcons control090SmallSunkenIcon).
	addQueryBtn text: ('ToolButton').
	addQueryBtn color: ((Color r: 1 g: 0.871 b: 0.0)).
	addQueryBtn checkable: (false).
	addQueryBtn checked: (false).
	addQueryBtn autoExclusive: (false).
	addQueryBtn autoRaise: (true).
	addQueryBtn buttonStyle: (#iconOnly).
	addQueryBtn setProperty: #objectName toValue: 'addQueryBtn'.
	searchContainer addChild: addQueryBtn.
	debugQueryBtn := UiToolButton new.
	debugQueryBtn changeTableLayout.
	debugQueryBtn extent: (21@18).
	debugQueryBtn position: (313@374).
	debugQueryBtn hResizing: (#shrinkWrap).
	debugQueryBtn vResizing: (#shrinkWrap).
	debugQueryBtn minWidth: (2).
	debugQueryBtn minHeight: (2).
	debugQueryBtn cellInset: (4).
	debugQueryBtn cellPositioning: (#center).
	debugQueryBtn cellSpacing: (#none).
	debugQueryBtn layoutInset: (2@0 corner: 1@0).
	debugQueryBtn listCentering: (#topLeft).
	debugQueryBtn listDirection: (#leftToRight).
	debugQueryBtn listSpacing: (#none).
	debugQueryBtn maxCellSize: (1073741823).
	debugQueryBtn minCellSize: (0).
	debugQueryBtn wrapCentering: (#topLeft).
	debugQueryBtn wrapDirection: (#none).
	debugQueryBtn frameFractions: (0@0 corner: 1@1).
	debugQueryBtn frameOffsets: (0@0 corner: 0@0).
	debugQueryBtn balloonText: ('Toggle scripts').
	debugQueryBtn balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.922)).
	debugQueryBtn enabled: (true).
	debugQueryBtn setProperty: #iconByDesigner toValue: 'ViIcons control090SmallSunkenIcon'.
	debugQueryBtn icon: (ViIcons control090SmallSunkenIcon).
	debugQueryBtn text: ('ToolButton').
	debugQueryBtn color: ((Color r: 1 g: 0.871 b: 0.0)).
	debugQueryBtn checkable: (false).
	debugQueryBtn checked: (false).
	debugQueryBtn autoExclusive: (false).
	debugQueryBtn autoRaise: (true).
	debugQueryBtn buttonStyle: (#iconOnly).
	debugQueryBtn setProperty: #objectName toValue: 'debugQueryBtn'.
	searchContainer addChild: debugQueryBtn.
	combineQueryBtn := UiToolButton new.
	combineQueryBtn changeTableLayout.
	combineQueryBtn extent: (21@18).
	combineQueryBtn position: (338@374).
	combineQueryBtn hResizing: (#shrinkWrap).
	combineQueryBtn vResizing: (#shrinkWrap).
	combineQueryBtn minWidth: (2).
	combineQueryBtn minHeight: (2).
	combineQueryBtn cellInset: (4).
	combineQueryBtn cellPositioning: (#center).
	combineQueryBtn cellSpacing: (#none).
	combineQueryBtn layoutInset: (2@0 corner: 1@0).
	combineQueryBtn listCentering: (#topLeft).
	combineQueryBtn listDirection: (#leftToRight).
	combineQueryBtn listSpacing: (#none).
	combineQueryBtn maxCellSize: (1073741823).
	combineQueryBtn minCellSize: (0).
	combineQueryBtn wrapCentering: (#topLeft).
	combineQueryBtn wrapDirection: (#none).
	combineQueryBtn frameFractions: (0@0 corner: 1@1).
	combineQueryBtn frameOffsets: (0@0 corner: 0@0).
	combineQueryBtn balloonText: ('Toggle scripts').
	combineQueryBtn balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.922)).
	combineQueryBtn enabled: (true).
	combineQueryBtn setProperty: #iconByDesigner toValue: 'ViIcons control090SmallSunkenIcon'.
	combineQueryBtn icon: (ViIcons control090SmallSunkenIcon).
	combineQueryBtn text: ('ToolButton').
	combineQueryBtn color: ((Color r: 1 g: 0.871 b: 0.0)).
	combineQueryBtn checkable: (false).
	combineQueryBtn checked: (false).
	combineQueryBtn autoExclusive: (false).
	combineQueryBtn autoRaise: (true).
	combineQueryBtn buttonStyle: (#iconOnly).
	combineQueryBtn setProperty: #objectName toValue: 'combineQueryBtn'.
	searchContainer addChild: combineQueryBtn.
	panel addChild: searchContainer.
	panel setProperty: #uiClassName toValue: 'ViQueryPage'.