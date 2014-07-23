ui - private
initializePanel
	"This code is auto-generated. DO NOT modify it because another generation step will overwrite all changes."
	
	| unnamedMorph1 unnamedMorph2 |
	
	panel := UiContainer new.
	panel changeTableLayout.
	panel extent: (338@158).
	panel position: (0@0).
	panel hResizing: (#rigid).
	panel vResizing: (#rigid).
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
	panel balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.922)).
	panel color: (Color white).
	panel borderWidth: (0).
	panel borderStyle2: (#simple).
	panel borderColor: (Color black).
	panel setProperty: #objectName toValue: 'panel'.
	unnamedMorph1 := UiContainer new.
	unnamedMorph1 changeTableLayout.
	unnamedMorph1 extent: (330@22).
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
	unnamedMorph1 balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.922)).
	unnamedMorph1 color: (Color transparent).
	unnamedMorph1 borderWidth: (0).
	unnamedMorph1 borderStyle2: (#simple).
	unnamedMorph1 borderColor: (Color black).
	serverBtn := ViNotificationToolButton new.
	serverBtn changeTableLayout.
	serverBtn extent: (22@18).
	serverBtn position: (5@6).
	serverBtn hResizing: (#shrinkWrap).
	serverBtn vResizing: (#shrinkWrap).
	serverBtn minWidth: (2).
	serverBtn minHeight: (2).
	serverBtn cellInset: (4).
	serverBtn cellPositioning: (#center).
	serverBtn cellSpacing: (#none).
	serverBtn layoutInset: (2@0 corner: 2@0).
	serverBtn listCentering: (#topLeft).
	serverBtn listDirection: (#leftToRight).
	serverBtn listSpacing: (#none).
	serverBtn maxCellSize: (1073741823).
	serverBtn minCellSize: (0).
	serverBtn wrapCentering: (#topLeft).
	serverBtn wrapDirection: (#none).
	serverBtn frameFractions: (0@0 corner: 1@1).
	serverBtn frameOffsets: (0@0 corner: 0@0).
	serverBtn balloonText: ('Server mode').
	serverBtn balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.922)).
	serverBtn enabled: (true).
	serverBtn setProperty: #iconByDesigner toValue: 'UiFugueIcons serverCastIcon'.
	serverBtn icon: (UiFugueIcons serverCastIcon).
	serverBtn text: ('ToolButton').
	serverBtn color: ((Color r: 1 g: 0.871 b: 0.0)).
	serverBtn checkable: (true).
	serverBtn checked: (false).
	serverBtn autoExclusive: (false).
	serverBtn autoRaise: (true).
	serverBtn buttonStyle: (#iconOnly).
	serverBtn setProperty: #objectName toValue: 'serverBtn'.
	unnamedMorph1 addChild: serverBtn.
	connectBtn := ViNotificationToolButton new.
	connectBtn changeTableLayout.
	connectBtn extent: (22@18).
	connectBtn position: (33@6).
	connectBtn hResizing: (#shrinkWrap).
	connectBtn vResizing: (#shrinkWrap).
	connectBtn minWidth: (2).
	connectBtn minHeight: (2).
	connectBtn cellInset: (4).
	connectBtn cellPositioning: (#center).
	connectBtn cellSpacing: (#none).
	connectBtn layoutInset: (2@0 corner: 2@0).
	connectBtn listCentering: (#topLeft).
	connectBtn listDirection: (#leftToRight).
	connectBtn listSpacing: (#none).
	connectBtn maxCellSize: (1073741823).
	connectBtn minCellSize: (0).
	connectBtn wrapCentering: (#topLeft).
	connectBtn wrapDirection: (#none).
	connectBtn frameFractions: (0@0 corner: 1@1).
	connectBtn frameOffsets: (0@0 corner: 0@0).
	connectBtn balloonText: ('Establish connection').
	connectBtn balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.922)).
	connectBtn enabled: (true).
	connectBtn setProperty: #iconByDesigner toValue: 'UiFugueIcons plugDisconnectIcon'.
	connectBtn icon: (UiFugueIcons plugDisconnectIcon).
	connectBtn text: ('ToolButton').
	connectBtn color: ((Color r: 1 g: 0.871 b: 0.0)).
	connectBtn checkable: (true).
	connectBtn checked: (false).
	connectBtn autoExclusive: (false).
	connectBtn autoRaise: (true).
	connectBtn buttonStyle: (#iconOnly).
	connectBtn setProperty: #objectName toValue: 'connectBtn'.
	unnamedMorph1 addChild: connectBtn.
	addressEdit := UiLineEdit new.
	addressEdit extent: (274@20).
	addressEdit position: (60@5).
	addressEdit hResizing: (#spaceFill).
	addressEdit vResizing: (#rigid).
	addressEdit minWidth: (2).
	addressEdit minHeight: (2).
	addressEdit cellInset: (0).
	addressEdit cellPositioning: (#center).
	addressEdit cellSpacing: (#none).
	addressEdit layoutInset: (0).
	addressEdit listCentering: (#topLeft).
	addressEdit listDirection: (#topToBottom).
	addressEdit listSpacing: (#none).
	addressEdit maxCellSize: (1073741823).
	addressEdit minCellSize: (0).
	addressEdit wrapCentering: (#topLeft).
	addressEdit wrapDirection: (#none).
	addressEdit frameFractions: (0@0 corner: 1@1).
	addressEdit frameOffsets: (0@0 corner: 0@0).
	addressEdit balloonText: (nil).
	addressEdit balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.922)).
	addressEdit widgetResizable: (false).
	addressEdit horizontalScrollBarPolicy: (#alwaysOff).
	addressEdit verticalScrollBarPolicy: (#alwaysOff).
	addressEdit outerBorderWidth: (1).
	addressEdit scrollBarThickness: (9).
	addressEdit theText: ('127.0.0.1:6000').
	addressEdit readOnly: (false).
	addressEdit autoConvert: (false).
	addressEdit autoAccept: (false).
	addressEdit acceptOnFocusLost: (true).
	addressEdit scrollingMode: (#none).
	addressEdit scrollingLimit: (10).
	addressEdit helpText: ('IP address...').
	addressEdit hideCursor: (true).
	addressEdit setProperty: #objectName toValue: 'addressEdit'.
	unnamedMorph1 addChild: addressEdit.
	panel addChild: unnamedMorph1.
	unnamedMorph2 := UiContainer new.
	unnamedMorph2 changeTableLayout.
	unnamedMorph2 extent: (330@124).
	unnamedMorph2 position: (4@30).
	unnamedMorph2 hResizing: (#spaceFill).
	unnamedMorph2 vResizing: (#spaceFill).
	unnamedMorph2 minWidth: (2).
	unnamedMorph2 minHeight: (2).
	unnamedMorph2 cellInset: (1).
	unnamedMorph2 cellPositioning: (#center).
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
	unnamedMorph2 balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.925)).
	unnamedMorph2 color: ((Color r: 0.85 g: 0.85 b: 0.85)).
	unnamedMorph2 borderWidth: (0).
	unnamedMorph2 borderStyle2: (#simple).
	unnamedMorph2 borderColor: (Color black).
	dropTarget := ViMethodDropTarget new.
	dropTarget extent: (164@124).
	dropTarget position: (4@30).
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
	dropTarget balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.922)).
	dropTarget setProperty: #objectName toValue: 'dropTarget'.
	unnamedMorph2 addChild: dropTarget.
	incomingList := UiListView new.
	incomingList extent: (165@124).
	incomingList position: (169@30).
	incomingList hResizing: (#spaceFill).
	incomingList vResizing: (#spaceFill).
	incomingList minWidth: (2).
	incomingList minHeight: (2).
	incomingList cellInset: (0).
	incomingList cellPositioning: (#center).
	incomingList cellSpacing: (#none).
	incomingList layoutInset: (0).
	incomingList listCentering: (#topLeft).
	incomingList listDirection: (#topToBottom).
	incomingList listSpacing: (#none).
	incomingList maxCellSize: (1073741823).
	incomingList minCellSize: (0).
	incomingList wrapCentering: (#topLeft).
	incomingList wrapDirection: (#none).
	incomingList frameFractions: (0@0 corner: 1@1).
	incomingList frameOffsets: (0@0 corner: 0@0).
	incomingList balloonText: (nil).
	incomingList balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.922)).
	incomingList widgetResizable: (true).
	incomingList horizontalScrollBarPolicy: (#alwaysOff).
	incomingList verticalScrollBarPolicy: (#asNeeded).
	incomingList outerBorderWidth: (0).
	incomingList scrollBarThickness: (9).
	incomingList modelClass: (nil).
	incomingList horizontalHeaderVisible: (false).
	incomingList verticalHeaderVisible: (false).
	incomingList selectionBehavior: (#selectRows).
	incomingList selectionMode: (UiViewSingleSelection).
	incomingList listOrientation: (#default).
	incomingList hAlignment: (#left).
	incomingList vAlignment: (#top).
	incomingList setProperty: #objectName toValue: 'incomingList'.
	unnamedMorph2 addChild: incomingList.
	panel addChild: unnamedMorph2.
	panel setProperty: #uiClassName toValue: 'ViObjectGateEditor'.