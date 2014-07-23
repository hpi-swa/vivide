ui - private
initializePanel
	"This code is auto-generated. DO NOT modify it because another generation step will overwrite all changes."
	
	panel := UiContainer new.
	panel changeTableLayout.
	panel extent: (240@330).
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
	panel balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1.0 alpha: 0.922)).
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
	unnamedMorph1 balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1.0 alpha: 0.922)).
	unnamedMorph1 color: (Color transparent).
	unnamedMorph1 borderWidth: (0).
	unnamedMorph1 borderStyle2: (#simple).
	unnamedMorph1 borderColor: (Color black).
	pinBtn := UiToolButton new.
	pinBtn changeTableLayout.
	pinBtn extent: (18@18).
	pinBtn position: (3@4).
	pinBtn hResizing: (#shrinkWrap).
	pinBtn vResizing: (#shrinkWrap).
	pinBtn minWidth: (2).
	pinBtn minHeight: (2).
	pinBtn cellInset: (4).
	pinBtn cellPositioning: (#center).
	pinBtn cellSpacing: (#none).
	pinBtn layoutInset: (0).
	pinBtn listCentering: (#topLeft).
	pinBtn listDirection: (#leftToRight).
	pinBtn listSpacing: (#none).
	pinBtn maxCellSize: (1073741823).
	pinBtn minCellSize: (0).
	pinBtn wrapCentering: (#topLeft).
	pinBtn wrapDirection: (#none).
	pinBtn frameFractions: (0@0 corner: 1@1).
	pinBtn frameOffsets: (0@0 corner: 0@0).
	pinBtn balloonText: (nil).
	pinBtn balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1.0 alpha: 0.922)).
	pinBtn enabled: (true).
	pinBtn setProperty: #iconByDesigner toValue: 'UiFugueIcons pinSmallIcon'.
	pinBtn icon: (UiFugueIcons pinSmallIcon).
	pinBtn text: ('ToolButton').
	pinBtn color: ((Color r: 0.85 g: 0.85 b: 0.85)).
	pinBtn checkable: (true).
	pinBtn checked: (false).
	pinBtn autoExclusive: (false).
	pinBtn autoRaise: (true).
	pinBtn buttonStyle: (#iconOnly).
	pinBtn setProperty: #objectName toValue: 'pinBtn'.
	unnamedMorph1 addMorphBack: pinBtn.
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
	hideBtn balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1.0 alpha: 0.933)).
	hideBtn enabled: (true).
	hideBtn setProperty: #iconByDesigner toValue: 'UiSilkIcons eyeIcon'.
	hideBtn icon: (UiSilkIcons eyeIcon).
	hideBtn text: ('ToolButton').
	hideBtn color: ((Color r: 0.85 g: 0.85 b: 0.85)).
	hideBtn checkable: (true).
	hideBtn checked: (true).
	hideBtn autoExclusive: (false).
	hideBtn autoRaise: (true).
	hideBtn buttonStyle: (#iconOnly).
	hideBtn setProperty: #objectName toValue: 'hideBtn'.
	unnamedMorph1 addMorphBack: hideBtn.
	unnamedMorph2 := UiSpacer new.
	unnamedMorph2 extent: (57@10).
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
	unnamedMorph2 balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1.0 alpha: 0.922)).
	unnamedMorph2 color: (Color blue).
	unnamedMorph2 borderWidth: (0).
	unnamedMorph2 borderStyle2: (#simple).
	unnamedMorph2 borderColor: (Color black).
	unnamedMorph2 orientation: (#horizontal).
	unnamedMorph1 addMorphBack: unnamedMorph2.
	headerBtn := ViDraggableButton new.
	headerBtn changeTableLayout.
	headerBtn extent: (44@21).
	headerBtn position: (99@2).
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
	headerBtn balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1.0 alpha: 0.922)).
	headerBtn enabled: (true).
	headerBtn setProperty: #iconByDesigner toValue: 'nil'.
	headerBtn icon: (nil).
	headerBtn text: ('Header').
	headerBtn color: ((Color r: 0.85 g: 0.85 b: 0.85)).
	headerBtn checkable: (false).
	headerBtn checked: (false).
	headerBtn autoExclusive: (false).
	headerBtn autoRaise: (true).
	headerBtn buttonStyle: (#textBesideIcon).
	headerBtn setProperty: #objectName toValue: 'headerBtn'.
	unnamedMorph1 addMorphBack: headerBtn.
	unnamedMorph3 := UiSpacer new.
	unnamedMorph3 extent: (57@10).
	unnamedMorph3 position: (145@8).
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
	unnamedMorph3 balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1.0 alpha: 0.922)).
	unnamedMorph3 color: (Color blue).
	unnamedMorph3 borderWidth: (0).
	unnamedMorph3 borderStyle2: (#simple).
	unnamedMorph3 borderColor: (Color black).
	unnamedMorph3 orientation: (#horizontal).
	unnamedMorph1 addMorphBack: unnamedMorph3.
	unnamedMorph4 := UiContainer new.
	unnamedMorph4 extent: (16@10).
	unnamedMorph4 position: (202@8).
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
	unnamedMorph4 balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1.0 alpha: 0.937)).
	unnamedMorph4 color: (Color transparent).
	unnamedMorph4 borderWidth: (0).
	unnamedMorph4 borderStyle2: (#simple).
	unnamedMorph4 borderColor: (Color black).
	unnamedMorph1 addMorphBack: unnamedMorph4.
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
	closeBtn balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1.0 alpha: 0.922)).
	closeBtn enabled: (true).
	closeBtn setProperty: #iconByDesigner toValue: 'UiFugueIcons minusWhiteIcon'.
	closeBtn icon: (UiFugueIcons minusWhiteIcon).
	closeBtn text: ('Call Graph').
	closeBtn color: ((Color r: 0.85 g: 0.85 b: 0.85)).
	closeBtn checkable: (false).
	closeBtn checked: (false).
	closeBtn autoExclusive: (false).
	closeBtn autoRaise: (true).
	closeBtn buttonStyle: (#iconOnly).
	closeBtn setProperty: #objectName toValue: 'closeBtn'.
	unnamedMorph1 addMorphBack: closeBtn.
	panel addMorphBack: unnamedMorph1.
	panel setProperty: #uiClassName toValue: 'ViEditorTemplate'.