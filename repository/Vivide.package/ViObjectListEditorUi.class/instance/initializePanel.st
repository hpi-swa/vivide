ui - private
initializePanel
	"This code is auto-generated. DO NOT modify it because another generation step will overwrite all changes."
	
	| unnamedMorph1 unnamedMorph2 unnamedMorph3 |
	
	panel := UiContainer new.
	panel changeTableLayout.
	panel extent: (252@408).
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
	panel balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.922)).
	panel color: (Color transparent).
	panel borderWidth: (0).
	panel borderStyle2: (#simple).
	panel borderColor: (Color black).
	panel setProperty: #objectName toValue: 'panel'.
	unnamedMorph1 := UiContainer new.
	unnamedMorph1 changeTableLayout.
	unnamedMorph1 extent: (248@19).
	unnamedMorph1 position: (2@3).
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
	pageButtonGroup := UiButtonGroup new.
	pageButtonGroup changeTableLayout.
	pageButtonGroup extent: (19@19).
	pageButtonGroup position: (2@3).
	pageButtonGroup hResizing: (#shrinkWrap).
	pageButtonGroup vResizing: (#shrinkWrap).
	pageButtonGroup minWidth: (2).
	pageButtonGroup minHeight: (2).
	pageButtonGroup cellInset: (0).
	pageButtonGroup cellPositioning: (#center).
	pageButtonGroup cellSpacing: (#none).
	pageButtonGroup layoutInset: (0).
	pageButtonGroup listCentering: (#topLeft).
	pageButtonGroup listDirection: (#leftToRight).
	pageButtonGroup listSpacing: (#none).
	pageButtonGroup maxCellSize: (1073741823).
	pageButtonGroup minCellSize: (0).
	pageButtonGroup wrapCentering: (#topLeft).
	pageButtonGroup wrapDirection: (#none).
	pageButtonGroup frameFractions: (0@0 corner: 1@1).
	pageButtonGroup frameOffsets: (0@0 corner: 0@0).
	pageButtonGroup balloonText: (nil).
	pageButtonGroup balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.941)).
	pageButtonGroup color: (Color transparent).
	pageButtonGroup borderWidth: (0).
	pageButtonGroup borderStyle2: (#simple).
	pageButtonGroup borderColor: (Color black).
	pageButtonGroup setProperty: #objectName toValue: 'pageButtonGroup'.
	extensionalListBtn := ViNotificationToolButton new.
	extensionalListBtn changeTableLayout.
	extensionalListBtn extent: (18@18).
	extensionalListBtn position: (2@3).
	extensionalListBtn hResizing: (#shrinkWrap).
	extensionalListBtn vResizing: (#shrinkWrap).
	extensionalListBtn minWidth: (2).
	extensionalListBtn minHeight: (2).
	extensionalListBtn cellInset: (4).
	extensionalListBtn cellPositioning: (#center).
	extensionalListBtn cellSpacing: (#none).
	extensionalListBtn layoutInset: (0).
	extensionalListBtn listCentering: (#topLeft).
	extensionalListBtn listDirection: (#leftToRight).
	extensionalListBtn listSpacing: (#none).
	extensionalListBtn maxCellSize: (1073741823).
	extensionalListBtn minCellSize: (0).
	extensionalListBtn wrapCentering: (#topLeft).
	extensionalListBtn wrapDirection: (#none).
	extensionalListBtn frameFractions: (0@0 corner: 1@1).
	extensionalListBtn frameOffsets: (0@0 corner: 0@0).
	extensionalListBtn balloonText: ('List').
	extensionalListBtn balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.922)).
	extensionalListBtn enabled: (true).
	extensionalListBtn setProperty: #iconByDesigner toValue: 'ViIcons controlRecordSmallSunkenIcon'.
	extensionalListBtn icon: (ViIcons controlRecordSmallSunkenIcon).
	extensionalListBtn text: ('ToolButton').
	extensionalListBtn color: ((Color r: 0.85 g: 0.85 b: 0.85)).
	extensionalListBtn checkable: (true).
	extensionalListBtn checked: (true).
	extensionalListBtn autoExclusive: (true).
	extensionalListBtn autoRaise: (true).
	extensionalListBtn buttonStyle: (#iconOnly).
	extensionalListBtn setProperty: #objectName toValue: 'extensionalListBtn'.
	pageButtonGroup addChild: extensionalListBtn.
	unnamedMorph1 addChild: pageButtonGroup.
	addPageBtn := UiToolButton new.
	addPageBtn changeTableLayout.
	addPageBtn extent: (18@18).
	addPageBtn position: (22@3).
	addPageBtn hResizing: (#shrinkWrap).
	addPageBtn vResizing: (#shrinkWrap).
	addPageBtn minWidth: (2).
	addPageBtn minHeight: (2).
	addPageBtn cellInset: (4).
	addPageBtn cellPositioning: (#center).
	addPageBtn cellSpacing: (#none).
	addPageBtn layoutInset: (0).
	addPageBtn listCentering: (#topLeft).
	addPageBtn listDirection: (#leftToRight).
	addPageBtn listSpacing: (#none).
	addPageBtn maxCellSize: (1073741823).
	addPageBtn minCellSize: (0).
	addPageBtn wrapCentering: (#topLeft).
	addPageBtn wrapDirection: (#none).
	addPageBtn frameFractions: (0@0 corner: 1@1).
	addPageBtn frameOffsets: (0@0 corner: 0@0).
	addPageBtn balloonText: (nil).
	addPageBtn balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.922)).
	addPageBtn enabled: (true).
	addPageBtn setProperty: #iconByDesigner toValue: 'UiFugueIcons plusSmallIcon'.
	addPageBtn icon: (UiFugueIcons plusSmallIcon).
	addPageBtn text: ('Hide').
	addPageBtn color: ((Color r: 0.85 g: 0.85 b: 0.85)).
	addPageBtn checkable: (false).
	addPageBtn checked: (false).
	addPageBtn autoExclusive: (false).
	addPageBtn autoRaise: (true).
	addPageBtn buttonStyle: (#iconOnly).
	addPageBtn setProperty: #objectName toValue: 'addPageBtn'.
	unnamedMorph1 addChild: addPageBtn.
	unnamedMorph2 := UiSpacer new.
	unnamedMorph2 extent: (52@10).
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
	headerBtn extent: (62@18).
	headerBtn position: (94@3).
	headerBtn hResizing: (#shrinkWrap).
	headerBtn vResizing: (#shrinkWrap).
	headerBtn minWidth: (2).
	headerBtn minHeight: (2).
	headerBtn cellInset: (4).
	headerBtn cellPositioning: (#center).
	headerBtn cellSpacing: (#none).
	headerBtn layoutInset: (2@ -1 corner: 2@ -2).
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
	headerBtn text: ('Object List').
	headerBtn color: ((Color r: 0.85 g: 0.85 b: 0.85)).
	headerBtn checkable: (false).
	headerBtn checked: (false).
	headerBtn autoExclusive: (false).
	headerBtn autoRaise: (true).
	headerBtn buttonStyle: (#textBesideIcon).
	headerBtn setProperty: #objectName toValue: 'headerBtn'.
	unnamedMorph1 addChild: headerBtn.
	unnamedMorph3 := UiSpacer new.
	unnamedMorph3 extent: (52@10).
	unnamedMorph3 position: (158@8).
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
	hideBtn := UiToolButton new.
	hideBtn changeTableLayout.
	hideBtn extent: (18@18).
	hideBtn position: (210@3).
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
	hideBtn text: ('Hide').
	hideBtn color: ((Color r: 0.85 g: 0.85 b: 0.85)).
	hideBtn checkable: (false).
	hideBtn checked: (false).
	hideBtn autoExclusive: (false).
	hideBtn autoRaise: (true).
	hideBtn buttonStyle: (#iconOnly).
	hideBtn setProperty: #objectName toValue: 'hideBtn'.
	unnamedMorph1 addChild: hideBtn.
	closeBtn := UiToolButton new.
	closeBtn changeTableLayout.
	closeBtn extent: (18@18).
	closeBtn position: (230@3).
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
	closeBtn text: ('Close').
	closeBtn color: ((Color r: 0.85 g: 0.85 b: 0.85)).
	closeBtn checkable: (false).
	closeBtn checked: (false).
	closeBtn autoExclusive: (false).
	closeBtn autoRaise: (true).
	closeBtn buttonStyle: (#iconOnly).
	closeBtn setProperty: #objectName toValue: 'closeBtn'.
	unnamedMorph1 addChild: closeBtn.
	panel addChild: unnamedMorph1.
	stack := UiStackedWidget new.
	stack changeTableLayout.
	stack extent: (248@382).
	stack position: (2@24).
	stack hResizing: (#spaceFill).
	stack vResizing: (#spaceFill).
	stack minWidth: (2).
	stack minHeight: (2).
	stack cellInset: (4).
	stack cellPositioning: (#center).
	stack cellSpacing: (#none).
	stack layoutInset: (0).
	stack listCentering: (#topLeft).
	stack listDirection: (#topToBottom).
	stack listSpacing: (#none).
	stack maxCellSize: (1073741823).
	stack minCellSize: (0).
	stack wrapCentering: (#topLeft).
	stack wrapDirection: (#none).
	stack frameFractions: (0@0 corner: 1@1).
	stack frameOffsets: (0@0 corner: 0@0).
	stack balloonText: (nil).
	stack balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.929)).
	stack color: (Color transparent).
	stack borderWidth: (0).
	stack borderStyle2: (#simple).
	stack borderColor: (Color black).
	stack setProperty: #objectName toValue: 'stack'.
	panel addChild: stack.
	panel setProperty: #uiClassName toValue: 'ViObjectListEditor'.