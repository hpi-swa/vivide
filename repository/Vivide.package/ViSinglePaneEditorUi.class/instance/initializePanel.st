ui - private
initializePanel
	"This code is auto-generated. DO NOT modify it because another generation step will overwrite all changes."
	
	| unnamedMorph1 unnamedMorph2 unnamedMorph3 unnamedMorph4 |
	
	panel := UiContainer new.
	panel changeTableLayout.
	panel extent: (275@235).
	panel position: (0@0).
	panel hResizing: (#rigid).
	panel vResizing: (#rigid).
	panel minWidth: (2).
	panel minHeight: (2).
	panel cellGap: (2).
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
	unnamedMorph1 := UiContainer new.
	unnamedMorph1 changeTableLayout.
	unnamedMorph1 extent: (275@19).
	unnamedMorph1 position: (0@1).
	unnamedMorph1 hResizing: (#spaceFill).
	unnamedMorph1 vResizing: (#shrinkWrap).
	unnamedMorph1 minWidth: (2).
	unnamedMorph1 minHeight: (2).
	unnamedMorph1 cellGap: (0).
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
	closeBtn := UiToolButton new.
	closeBtn changeTableLayout.
	closeBtn extent: (18@18).
	closeBtn position: (0@1).
	closeBtn hResizing: (#shrinkWrap).
	closeBtn vResizing: (#shrinkWrap).
	closeBtn minWidth: (2).
	closeBtn minHeight: (2).
	closeBtn cellGap: (4).
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
	unnamedMorph2 := UiContainer new.
	unnamedMorph2 extent: (18@10).
	unnamedMorph2 position: (20@6).
	unnamedMorph2 hResizing: (#rigid).
	unnamedMorph2 vResizing: (#rigid).
	unnamedMorph2 minWidth: (2).
	unnamedMorph2 minHeight: (2).
	unnamedMorph2 cellGap: (4).
	unnamedMorph2 cellPositioning: (#center).
	unnamedMorph2 cellSpacing: (#none).
	unnamedMorph2 layoutInset: (4).
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
	unnamedMorph2 balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.933)).
	unnamedMorph2 color: (Color transparent).
	unnamedMorph2 borderWidth: (0).
	unnamedMorph2 borderStyle2: (#simple).
	unnamedMorph2 borderColor: (Color black).
	unnamedMorph1 addChild: unnamedMorph2.
	unnamedMorph3 := UiSpacer new.
	unnamedMorph3 extent: (64@10).
	unnamedMorph3 position: (38@6).
	unnamedMorph3 hResizing: (#spaceFill).
	unnamedMorph3 vResizing: (#rigid).
	unnamedMorph3 minWidth: (2).
	unnamedMorph3 minHeight: (2).
	unnamedMorph3 cellGap: (0).
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
	headerBtn := ViDraggableButton new.
	headerBtn changeTableLayout.
	headerBtn extent: (67@18).
	headerBtn position: (102@1).
	headerBtn hResizing: (#shrinkWrap).
	headerBtn vResizing: (#shrinkWrap).
	headerBtn minWidth: (2).
	headerBtn minHeight: (2).
	headerBtn cellGap: (4).
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
	headerBtn text: ('Single Pane').
	headerBtn color: ((Color r: 0.85 g: 0.85 b: 0.85)).
	headerBtn checkable: (false).
	headerBtn checked: (false).
	headerBtn autoExclusive: (false).
	headerBtn autoRaise: (true).
	headerBtn buttonStyle: (#textBesideIcon).
	headerBtn setProperty: #objectName toValue: 'headerBtn'.
	unnamedMorph1 addChild: headerBtn.
	unnamedMorph4 := UiSpacer new.
	unnamedMorph4 extent: (64@10).
	unnamedMorph4 position: (171@6).
	unnamedMorph4 hResizing: (#spaceFill).
	unnamedMorph4 vResizing: (#rigid).
	unnamedMorph4 minWidth: (2).
	unnamedMorph4 minHeight: (2).
	unnamedMorph4 cellGap: (0).
	unnamedMorph4 cellPositioning: (#center).
	unnamedMorph4 cellSpacing: (#none).
	unnamedMorph4 layoutInset: (0).
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
	unnamedMorph4 balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.922)).
	unnamedMorph4 color: (Color blue).
	unnamedMorph4 borderWidth: (0).
	unnamedMorph4 borderStyle2: (#simple).
	unnamedMorph4 borderColor: (Color black).
	unnamedMorph4 orientation: (#horizontal).
	unnamedMorph1 addChild: unnamedMorph4.
	hideBtn := UiToolButton new.
	hideBtn changeTableLayout.
	hideBtn extent: (18@18).
	hideBtn position: (235@1).
	hideBtn hResizing: (#shrinkWrap).
	hideBtn vResizing: (#shrinkWrap).
	hideBtn minWidth: (2).
	hideBtn minHeight: (2).
	hideBtn cellGap: (4).
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
	addPaneBtn := ViDraggableButton new.
	addPaneBtn changeTableLayout.
	addPaneBtn extent: (18@18).
	addPaneBtn position: (255@1).
	addPaneBtn hResizing: (#shrinkWrap).
	addPaneBtn vResizing: (#shrinkWrap).
	addPaneBtn minWidth: (2).
	addPaneBtn minHeight: (2).
	addPaneBtn cellGap: (4).
	addPaneBtn cellPositioning: (#center).
	addPaneBtn cellSpacing: (#none).
	addPaneBtn layoutInset: (0).
	addPaneBtn listCentering: (#topLeft).
	addPaneBtn listDirection: (#leftToRight).
	addPaneBtn listSpacing: (#none).
	addPaneBtn maxCellSize: (1073741823).
	addPaneBtn minCellSize: (0).
	addPaneBtn wrapCentering: (#topLeft).
	addPaneBtn wrapDirection: (#none).
	addPaneBtn frameFractions: (0@0 corner: 1@1).
	addPaneBtn frameOffsets: (0@0 corner: 0@0).
	addPaneBtn balloonText: ('Add pane').
	addPaneBtn balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.922)).
	addPaneBtn enabled: (true).
	addPaneBtn setProperty: #iconByDesigner toValue: 'UiFugueIcons plusSmallIcon'.
	addPaneBtn icon: (UiFugueIcons plusSmallIcon).
	addPaneBtn text: ('Add Pane').
	addPaneBtn color: ((Color r: 0.85 g: 0.85 b: 0.85)).
	addPaneBtn checkable: (false).
	addPaneBtn checked: (false).
	addPaneBtn autoExclusive: (false).
	addPaneBtn autoRaise: (true).
	addPaneBtn buttonStyle: (#iconOnly).
	addPaneBtn setProperty: #objectName toValue: 'addPaneBtn'.
	unnamedMorph1 addChild: addPaneBtn.
	panel addChild: unnamedMorph1.
	content := UiContainer new.
	content extent: (275@213).
	content position: (0@22).
	content hResizing: (#spaceFill).
	content vResizing: (#spaceFill).
	content minWidth: (2).
	content minHeight: (2).
	content cellGap: (4).
	content cellPositioning: (#center).
	content cellSpacing: (#none).
	content layoutInset: (4).
	content listCentering: (#topLeft).
	content listDirection: (#topToBottom).
	content listSpacing: (#none).
	content maxCellSize: (1073741823).
	content minCellSize: (0).
	content wrapCentering: (#topLeft).
	content wrapDirection: (#none).
	content frameFractions: (0@0 corner: 1@1).
	content frameOffsets: (0@0 corner: 0@0).
	content balloonText: (nil).
	content balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1 alpha: 0.933)).
	content color: (Color transparent).
	content borderWidth: (0).
	content borderStyle2: (#simple).
	content borderColor: (Color black).
	content setProperty: #objectName toValue: 'content'.
	panel addChild: content.
	panel setProperty: #uiClassName toValue: 'ViSinglePaneEditor'.