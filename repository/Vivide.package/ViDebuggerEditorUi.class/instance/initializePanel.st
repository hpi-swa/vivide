ui - private
initializePanel
	"This code is auto-generated. DO NOT modify it because another generation step will overwrite all changes."
	
	| unnamedMorph1 unnamedMorph2 unnamedMorph3 unnamedMorph4 |
	
	panel := UiContainer new.
	panel changeTableLayout.
	panel extent: (240@494).
	panel position: (0@0).
	panel hResizing: (#rigid).
	panel vResizing: (#rigid).
	panel minWidth: (2).
	panel minHeight: (2).
	panel cellInset: (1).
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
	panel balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.922)).
	panel color: (Color transparent).
	panel borderWidth: (0).
	panel borderStyle2: (#simple).
	panel borderColor: (Color black).
	panel setProperty: #objectName toValue: 'panel'.
	unnamedMorph1 := UiContainer new.
	unnamedMorph1 changeTableLayout.
	unnamedMorph1 extent: (236@22).
	unnamedMorph1 position: (2@2).
	unnamedMorph1 hResizing: (#spaceFill).
	unnamedMorph1 vResizing: (#shrinkWrap).
	unnamedMorph1 minWidth: (2).
	unnamedMorph1 minHeight: (2).
	unnamedMorph1 cellInset: (0).
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
	unnamedMorph1 balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.922)).
	unnamedMorph1 color: (Color transparent).
	unnamedMorph1 borderWidth: (0).
	unnamedMorph1 borderStyle2: (#simple).
	unnamedMorph1 borderColor: (Color black).
	objectsBtn := ViDraggableButton new.
	objectsBtn changeTableLayout.
	objectsBtn extent: (18@18).
	objectsBtn position: (3@4).
	objectsBtn hResizing: (#shrinkWrap).
	objectsBtn vResizing: (#shrinkWrap).
	objectsBtn minWidth: (2).
	objectsBtn minHeight: (2).
	objectsBtn cellInset: (4).
	objectsBtn cellPositioning: (#center).
	objectsBtn cellSpacing: (#none).
	objectsBtn layoutInset: (0).
	objectsBtn listCentering: (#topLeft).
	objectsBtn listDirection: (#leftToRight).
	objectsBtn listSpacing: (#none).
	objectsBtn maxCellSize: (1073741823).
	objectsBtn minCellSize: (0).
	objectsBtn wrapCentering: (#topLeft).
	objectsBtn wrapDirection: (#none).
	objectsBtn frameFractions: (0@0 corner: 1@1).
	objectsBtn frameOffsets: (0@0 corner: 0@0).
	objectsBtn balloonText: (nil).
	objectsBtn balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.933)).
	objectsBtn enabled: (true).
	objectsBtn setProperty: #iconByDesigner toValue: 'ViIcons controlRecordSmallSunkenIcon'.
	objectsBtn icon: (ViIcons controlRecordSmallSunkenIcon).
	objectsBtn text: ('ToolButton').
	objectsBtn color: ((Color r: 0.85 g: 0.85 b: 0.85)).
	objectsBtn checkable: (false).
	objectsBtn checked: (false).
	objectsBtn autoExclusive: (false).
	objectsBtn autoRaise: (true).
	objectsBtn buttonStyle: (#iconOnly).
	objectsBtn setProperty: #objectName toValue: 'objectsBtn'.
	unnamedMorph1 addChild: objectsBtn.
	hideBtn := UiToolButton new.
	hideBtn changeTableLayout.
	hideBtn extent: (18@18).
	hideBtn position: (23@4).
	hideBtn hResizing: (#shrinkWrap).
	hideBtn vResizing: (#shrinkWrap).
	hideBtn minWidth: (2).
	hideBtn minHeight: (2).
	hideBtn cellInset: (4).
	hideBtn cellPositioning: (#center).
	hideBtn cellSpacing: (#none).
	hideBtn layoutInset: (0).
	hideBtn listCentering: (#topLeft).
	hideBtn listDirection: (#leftToRight).
	hideBtn listSpacing: (#none).
	hideBtn maxCellSize: (1073741823).
	hideBtn minCellSize: (0).
	hideBtn wrapCentering: (#topLeft).
	hideBtn wrapDirection: (#none).
	hideBtn frameFractions: (0@0 corner: 1@1).
	hideBtn frameOffsets: (0@0 corner: 0@0).
	hideBtn balloonText: (nil).
	hideBtn balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.922)).
	hideBtn enabled: (true).
	hideBtn setProperty: #iconByDesigner toValue: 'ViIcons control090SmallSunkenIcon'.
	hideBtn icon: (ViIcons control090SmallSunkenIcon).
	hideBtn text: ('ToolButton').
	hideBtn color: ((Color r: 0.85 g: 0.85 b: 0.85)).
	hideBtn checkable: (false).
	hideBtn checked: (false).
	hideBtn autoExclusive: (false).
	hideBtn autoRaise: (true).
	hideBtn buttonStyle: (#iconOnly).
	hideBtn setProperty: #objectName toValue: 'hideBtn'.
	unnamedMorph1 addChild: hideBtn.
	unnamedMorph2 := UiSpacer new.
	unnamedMorph2 extent: (58@10).
	unnamedMorph2 position: (42@8).
	unnamedMorph2 hResizing: (#spaceFill).
	unnamedMorph2 vResizing: (#rigid).
	unnamedMorph2 minWidth: (2).
	unnamedMorph2 minHeight: (2).
	unnamedMorph2 cellInset: (0).
	unnamedMorph2 cellPositioning: (#center).
	unnamedMorph2 cellSpacing: (#none).
	unnamedMorph2 layoutInset: (0).
	unnamedMorph2 listCentering: (#topLeft).
	unnamedMorph2 listDirection: (#topToBottom).
	unnamedMorph2 listSpacing: (#none).
	unnamedMorph2 maxCellSize: (1073741823).
	unnamedMorph2 minCellSize: (0).
	unnamedMorph2 wrapCentering: (#topLeft).
	unnamedMorph2 wrapDirection: (#none).
	unnamedMorph2 frameFractions: (0@0 corner: 1@1).
	unnamedMorph2 frameOffsets: (0@0 corner: 0@0).
	unnamedMorph2 balloonText: (nil).
	unnamedMorph2 balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.922)).
	unnamedMorph2 color: (Color blue).
	unnamedMorph2 borderWidth: (0).
	unnamedMorph2 borderStyle2: (#simple).
	unnamedMorph2 borderColor: (Color black).
	unnamedMorph2 orientation: (#horizontal).
	unnamedMorph1 addChild: unnamedMorph2.
	headerBtn := ViDraggableButton new.
	headerBtn changeTableLayout.
	headerBtn extent: (58@21).
	headerBtn position: (100@2).
	headerBtn hResizing: (#shrinkWrap).
	headerBtn vResizing: (#shrinkWrap).
	headerBtn minWidth: (2).
	headerBtn minHeight: (2).
	headerBtn cellInset: (4).
	headerBtn cellPositioning: (#center).
	headerBtn cellSpacing: (#none).
	headerBtn layoutInset: (2@0 corner: 2@0).
	headerBtn listCentering: (#topLeft).
	headerBtn listDirection: (#leftToRight).
	headerBtn listSpacing: (#none).
	headerBtn maxCellSize: (1073741823).
	headerBtn minCellSize: (0).
	headerBtn wrapCentering: (#topLeft).
	headerBtn wrapDirection: (#none).
	headerBtn frameFractions: (0@0 corner: 1@1).
	headerBtn frameOffsets: (0@0 corner: 0@0).
	headerBtn balloonText: (nil).
	headerBtn balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.922)).
	headerBtn enabled: (true).
	headerBtn setProperty: #iconByDesigner toValue: 'nil'.
	headerBtn icon: (nil).
	headerBtn text: ('Debugger').
	headerBtn color: ((Color r: 0.85 g: 0.85 b: 0.85)).
	headerBtn checkable: (false).
	headerBtn checked: (false).
	headerBtn autoExclusive: (false).
	headerBtn autoRaise: (true).
	headerBtn buttonStyle: (#textBesideIcon).
	headerBtn setProperty: #objectName toValue: 'headerBtn'.
	unnamedMorph1 addChild: headerBtn.
	unnamedMorph3 := UiSpacer new.
	unnamedMorph3 extent: (58@10).
	unnamedMorph3 position: (160@8).
	unnamedMorph3 hResizing: (#spaceFill).
	unnamedMorph3 vResizing: (#rigid).
	unnamedMorph3 minWidth: (2).
	unnamedMorph3 minHeight: (2).
	unnamedMorph3 cellInset: (0).
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
	unnamedMorph3 balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.922)).
	unnamedMorph3 color: (Color blue).
	unnamedMorph3 borderWidth: (0).
	unnamedMorph3 borderStyle2: (#simple).
	unnamedMorph3 borderColor: (Color black).
	unnamedMorph3 orientation: (#horizontal).
	unnamedMorph1 addChild: unnamedMorph3.
	closeBtn := UiToolButton new.
	closeBtn changeTableLayout.
	closeBtn extent: (18@18).
	closeBtn position: (219@4).
	closeBtn hResizing: (#shrinkWrap).
	closeBtn vResizing: (#shrinkWrap).
	closeBtn minWidth: (2).
	closeBtn minHeight: (2).
	closeBtn cellInset: (4).
	closeBtn cellPositioning: (#center).
	closeBtn cellSpacing: (#none).
	closeBtn layoutInset: (0).
	closeBtn listCentering: (#topLeft).
	closeBtn listDirection: (#leftToRight).
	closeBtn listSpacing: (#none).
	closeBtn maxCellSize: (1073741823).
	closeBtn minCellSize: (0).
	closeBtn wrapCentering: (#topLeft).
	closeBtn wrapDirection: (#none).
	closeBtn frameFractions: (0@0 corner: 1@1).
	closeBtn frameOffsets: (0@0 corner: 0@0).
	closeBtn balloonText: (nil).
	closeBtn balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.922)).
	closeBtn enabled: (true).
	closeBtn setProperty: #iconByDesigner toValue: 'ViIcons crossSmallSunkenIcon'.
	closeBtn icon: (ViIcons crossSmallSunkenIcon).
	closeBtn text: ('Call Graph').
	closeBtn color: ((Color r: 0.85 g: 0.85 b: 0.85)).
	closeBtn checkable: (false).
	closeBtn checked: (false).
	closeBtn autoExclusive: (false).
	closeBtn autoRaise: (true).
	closeBtn buttonStyle: (#iconOnly).
	closeBtn setProperty: #objectName toValue: 'closeBtn'.
	unnamedMorph1 addChild: closeBtn.
	panel addChild: unnamedMorph1.
	infoLbl := UiLabel new.
	infoLbl changeTableLayout.
	infoLbl extent: (236@19).
	infoLbl position: (2@26).
	infoLbl hResizing: (#spaceFill).
	infoLbl vResizing: (#shrinkWrap).
	infoLbl minWidth: (2).
	infoLbl minHeight: (2).
	infoLbl cellInset: (0).
	infoLbl cellPositioning: (#center).
	infoLbl cellSpacing: (#none).
	infoLbl layoutInset: (0).
	infoLbl listCentering: (#topLeft).
	infoLbl listDirection: (#leftToRight).
	infoLbl listSpacing: (#none).
	infoLbl maxCellSize: (1073741823).
	infoLbl minCellSize: (0).
	infoLbl wrapCentering: (#topLeft).
	infoLbl wrapDirection: (#none).
	infoLbl frameFractions: (0@0 corner: 1@1).
	infoLbl frameOffsets: (0@0 corner: 0@0).
	infoLbl balloonText: (nil).
	infoLbl balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.922)).
	infoLbl text: ('Error msg...').
	infoLbl setProperty: #formByDesigner toValue: 'nil'.
	infoLbl form: (nil).
	infoLbl setProperty: #objectName toValue: 'infoLbl'.
	panel addChild: infoLbl.
	listView := UiListView new.
	listView extent: (236@425).
	listView position: (2@46).
	listView hResizing: (#spaceFill).
	listView vResizing: (#spaceFill).
	listView minWidth: (2).
	listView minHeight: (2).
	listView cellInset: (0).
	listView cellPositioning: (#center).
	listView cellSpacing: (#none).
	listView layoutInset: (0).
	listView listCentering: (#topLeft).
	listView listDirection: (#topToBottom).
	listView listSpacing: (#none).
	listView maxCellSize: (1073741823).
	listView minCellSize: (0).
	listView wrapCentering: (#topLeft).
	listView wrapDirection: (#none).
	listView frameFractions: (0@0 corner: 1@1).
	listView frameOffsets: (0@0 corner: 0@0).
	listView balloonText: (nil).
	listView balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.922)).
	listView widgetResizable: (false).
	listView horizontalScrollBarPolicy: (#asNeeded).
	listView verticalScrollBarPolicy: (#asNeeded).
	listView outerBorderWidth: (0).
	listView scrollBarThickness: (9).
	listView modelClass: (nil).
	listView horizontalHeaderVisible: (false).
	listView verticalHeaderVisible: (false).
	listView selectionBehavior: (#selectRows).
	listView selectionMode: (UiViewSingleSelection).
	listView listOrientation: (#default).
	listView hAlignment: (#left).
	listView vAlignment: (#top).
	listView setProperty: #objectName toValue: 'listView'.
	panel addChild: listView.
	controlsContainer := UiContainer new.
	controlsContainer changeTableLayout.
	controlsContainer extent: (236@19).
	controlsContainer position: (2@473).
	controlsContainer hResizing: (#spaceFill).
	controlsContainer vResizing: (#shrinkWrap).
	controlsContainer minWidth: (2).
	controlsContainer minHeight: (2).
	controlsContainer cellInset: (4).
	controlsContainer cellPositioning: (#center).
	controlsContainer cellSpacing: (#none).
	controlsContainer layoutInset: (0).
	controlsContainer listCentering: (#topLeft).
	controlsContainer listDirection: (#leftToRight).
	controlsContainer listSpacing: (#none).
	controlsContainer maxCellSize: (1073741823).
	controlsContainer minCellSize: (0).
	controlsContainer wrapCentering: (#topLeft).
	controlsContainer wrapDirection: (#none).
	controlsContainer frameFractions: (0@0 corner: 1@1).
	controlsContainer frameOffsets: (0@0 corner: 0@0).
	controlsContainer balloonText: (nil).
	controlsContainer balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.922)).
	controlsContainer color: (Color transparent).
	controlsContainer borderWidth: (0).
	controlsContainer borderStyle2: (#simple).
	controlsContainer borderColor: (Color black).
	controlsContainer setProperty: #objectName toValue: 'controlsContainer'.
	proceedBtn := UiToolButton new.
	proceedBtn changeTableLayout.
	proceedBtn extent: (22@18).
	proceedBtn position: (2@473).
	proceedBtn hResizing: (#shrinkWrap).
	proceedBtn vResizing: (#shrinkWrap).
	proceedBtn minWidth: (2).
	proceedBtn minHeight: (2).
	proceedBtn cellInset: (4).
	proceedBtn cellPositioning: (#center).
	proceedBtn cellSpacing: (#none).
	proceedBtn layoutInset: (2@0 corner: 2@0).
	proceedBtn listCentering: (#topLeft).
	proceedBtn listDirection: (#leftToRight).
	proceedBtn listSpacing: (#none).
	proceedBtn maxCellSize: (1073741823).
	proceedBtn minCellSize: (0).
	proceedBtn wrapCentering: (#topLeft).
	proceedBtn wrapDirection: (#none).
	proceedBtn frameFractions: (0@0 corner: 1@1).
	proceedBtn frameOffsets: (0@0 corner: 0@0).
	proceedBtn balloonText: ('Proceed').
	proceedBtn balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.929)).
	proceedBtn enabled: (true).
	proceedBtn setProperty: #iconByDesigner toValue: 'UiFugueIcons controlIcon'.
	proceedBtn icon: (UiFugueIcons controlIcon).
	proceedBtn text: ('Proceed').
	proceedBtn color: ((Color r: 0.09 g: 1 b: 0.09)).
	proceedBtn checkable: (false).
	proceedBtn checked: (false).
	proceedBtn autoExclusive: (false).
	proceedBtn autoRaise: (true).
	proceedBtn buttonStyle: (#iconOnly).
	proceedBtn setProperty: #objectName toValue: 'proceedBtn'.
	controlsContainer addChild: proceedBtn.
	restartBtn := UiToolButton new.
	restartBtn changeTableLayout.
	restartBtn extent: (22@18).
	restartBtn position: (30@473).
	restartBtn hResizing: (#shrinkWrap).
	restartBtn vResizing: (#shrinkWrap).
	restartBtn minWidth: (2).
	restartBtn minHeight: (2).
	restartBtn cellInset: (4).
	restartBtn cellPositioning: (#center).
	restartBtn cellSpacing: (#none).
	restartBtn layoutInset: (2@0 corner: 2@0).
	restartBtn listCentering: (#topLeft).
	restartBtn listDirection: (#leftToRight).
	restartBtn listSpacing: (#none).
	restartBtn maxCellSize: (1073741823).
	restartBtn minCellSize: (0).
	restartBtn wrapCentering: (#topLeft).
	restartBtn wrapDirection: (#none).
	restartBtn frameFractions: (0@0 corner: 1@1).
	restartBtn frameOffsets: (0@0 corner: 0@0).
	restartBtn balloonText: ('Restart').
	restartBtn balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.933)).
	restartBtn enabled: (true).
	restartBtn setProperty: #iconByDesigner toValue: 'UiFugueIcons arrowCircle045LeftIcon'.
	restartBtn icon: (UiFugueIcons arrowCircle045LeftIcon).
	restartBtn text: ('Restart').
	restartBtn color: ((Color r: 0.85 g: 0.85 b: 0.85)).
	restartBtn checkable: (false).
	restartBtn checked: (false).
	restartBtn autoExclusive: (false).
	restartBtn autoRaise: (true).
	restartBtn buttonStyle: (#iconOnly).
	restartBtn setProperty: #objectName toValue: 'restartBtn'.
	controlsContainer addChild: restartBtn.
	unnamedMorph4 := UiContainer new.
	unnamedMorph4 extent: (16@10).
	unnamedMorph4 position: (58@478).
	unnamedMorph4 hResizing: (#rigid).
	unnamedMorph4 vResizing: (#rigid).
	unnamedMorph4 minWidth: (2).
	unnamedMorph4 minHeight: (2).
	unnamedMorph4 cellInset: (4).
	unnamedMorph4 cellPositioning: (#center).
	unnamedMorph4 cellSpacing: (#none).
	unnamedMorph4 layoutInset: (4).
	unnamedMorph4 listCentering: (#topLeft).
	unnamedMorph4 listDirection: (#topToBottom).
	unnamedMorph4 listSpacing: (#none).
	unnamedMorph4 maxCellSize: (1073741823).
	unnamedMorph4 minCellSize: (0).
	unnamedMorph4 wrapCentering: (#topLeft).
	unnamedMorph4 wrapDirection: (#none).
	unnamedMorph4 frameFractions: (0@0 corner: 1@1).
	unnamedMorph4 frameOffsets: (0@0 corner: 0@0).
	unnamedMorph4 balloonText: (nil).
	unnamedMorph4 balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.937)).
	unnamedMorph4 color: (Color transparent).
	unnamedMorph4 borderWidth: (0).
	unnamedMorph4 borderStyle2: (#simple).
	unnamedMorph4 borderColor: (Color black).
	controlsContainer addChild: unnamedMorph4.
	intoBtn := UiToolButton new.
	intoBtn changeTableLayout.
	intoBtn extent: (22@18).
	intoBtn position: (78@473).
	intoBtn hResizing: (#shrinkWrap).
	intoBtn vResizing: (#shrinkWrap).
	intoBtn minWidth: (2).
	intoBtn minHeight: (2).
	intoBtn cellInset: (4).
	intoBtn cellPositioning: (#center).
	intoBtn cellSpacing: (#none).
	intoBtn layoutInset: (2@0 corner: 2@0).
	intoBtn listCentering: (#topLeft).
	intoBtn listDirection: (#leftToRight).
	intoBtn listSpacing: (#none).
	intoBtn maxCellSize: (1073741823).
	intoBtn minCellSize: (0).
	intoBtn wrapCentering: (#topLeft).
	intoBtn wrapDirection: (#none).
	intoBtn frameFractions: (0@0 corner: 1@1).
	intoBtn frameOffsets: (0@0 corner: 0@0).
	intoBtn balloonText: ('Step into').
	intoBtn balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.922)).
	intoBtn enabled: (true).
	intoBtn setProperty: #iconByDesigner toValue: 'UiFugueIcons arrowStepIcon'.
	intoBtn icon: (UiFugueIcons arrowStepIcon).
	intoBtn text: ('Into').
	intoBtn color: (Color orange).
	intoBtn checkable: (false).
	intoBtn checked: (false).
	intoBtn autoExclusive: (false).
	intoBtn autoRaise: (true).
	intoBtn buttonStyle: (#iconOnly).
	intoBtn setProperty: #objectName toValue: 'intoBtn'.
	controlsContainer addChild: intoBtn.
	overBtn := UiToolButton new.
	overBtn changeTableLayout.
	overBtn extent: (22@18).
	overBtn position: (106@473).
	overBtn hResizing: (#shrinkWrap).
	overBtn vResizing: (#shrinkWrap).
	overBtn minWidth: (2).
	overBtn minHeight: (2).
	overBtn cellInset: (4).
	overBtn cellPositioning: (#center).
	overBtn cellSpacing: (#none).
	overBtn layoutInset: (2@0 corner: 2@0).
	overBtn listCentering: (#topLeft).
	overBtn listDirection: (#leftToRight).
	overBtn listSpacing: (#none).
	overBtn maxCellSize: (1073741823).
	overBtn minCellSize: (0).
	overBtn wrapCentering: (#topLeft).
	overBtn wrapDirection: (#none).
	overBtn frameFractions: (0@0 corner: 1@1).
	overBtn frameOffsets: (0@0 corner: 0@0).
	overBtn balloonText: ('Step over').
	overBtn balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.922)).
	overBtn enabled: (true).
	overBtn setProperty: #iconByDesigner toValue: 'UiFugueIcons arrowStepOverIcon'.
	overBtn icon: (UiFugueIcons arrowStepOverIcon).
	overBtn text: ('Over').
	overBtn color: (Color yellow).
	overBtn checkable: (false).
	overBtn checked: (false).
	overBtn autoExclusive: (false).
	overBtn autoRaise: (true).
	overBtn buttonStyle: (#iconOnly).
	overBtn setProperty: #objectName toValue: 'overBtn'.
	controlsContainer addChild: overBtn.
	throughBtn := UiToolButton new.
	throughBtn changeTableLayout.
	throughBtn extent: (22@18).
	throughBtn position: (134@473).
	throughBtn hResizing: (#shrinkWrap).
	throughBtn vResizing: (#shrinkWrap).
	throughBtn minWidth: (2).
	throughBtn minHeight: (2).
	throughBtn cellInset: (4).
	throughBtn cellPositioning: (#center).
	throughBtn cellSpacing: (#none).
	throughBtn layoutInset: (2@0 corner: 2@0).
	throughBtn listCentering: (#topLeft).
	throughBtn listDirection: (#leftToRight).
	throughBtn listSpacing: (#none).
	throughBtn maxCellSize: (1073741823).
	throughBtn minCellSize: (0).
	throughBtn wrapCentering: (#topLeft).
	throughBtn wrapDirection: (#none).
	throughBtn frameFractions: (0@0 corner: 1@1).
	throughBtn frameOffsets: (0@0 corner: 0@0).
	throughBtn balloonText: ('Step through').
	throughBtn balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.922)).
	throughBtn enabled: (true).
	throughBtn setProperty: #iconByDesigner toValue: 'UiFugueIcons arrow315Icon'.
	throughBtn icon: (UiFugueIcons arrow315Icon).
	throughBtn text: ('Through').
	throughBtn color: ((Color r: 0.767 g: 0.767 b: 1)).
	throughBtn checkable: (false).
	throughBtn checked: (false).
	throughBtn autoExclusive: (false).
	throughBtn autoRaise: (true).
	throughBtn buttonStyle: (#iconOnly).
	throughBtn setProperty: #objectName toValue: 'throughBtn'.
	controlsContainer addChild: throughBtn.
	panel addChild: controlsContainer.
	panel setProperty: #uiClassName toValue: 'ViDebuggerEditor'.