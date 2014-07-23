ui - private
initializePanel
	"This code is auto-generated. DO NOT modify it because another generation step will overwrite all changes."
	
	| unnamedMorph1 unnamedMorph2 unnamedMorph3 unnamedMorph4 |
	
	panel := UiContainer new.
	panel changeTableLayout.
	panel extent: (252@487).
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
	panel balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1.0 alpha: 0.922)).
	panel color: (Color transparent).
	panel borderWidth: (0).
	panel borderStyle2: (#simple).
	panel borderColor: (Color black).
	panel setProperty: #objectName toValue: 'panel'.
	unnamedMorph1 := UiContainer new.
	unnamedMorph1 changeTableLayout.
	unnamedMorph1 extent: (248@22).
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
	hideBtn := UiToolButton new.
	hideBtn changeTableLayout.
	hideBtn extent: (18@18).
	hideBtn position: (3@4).
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
	hideBtn balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1.0 alpha: 0.945)).
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
	unnamedMorph2 extent: (73@10).
	unnamedMorph2 position: (22@8).
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
	headerBtn extent: (59@21).
	headerBtn position: (95@2).
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
	headerBtn text: ('Transcript').
	headerBtn color: ((Color r: 0.85 g: 0.85 b: 0.85)).
	headerBtn checkable: (false).
	headerBtn checked: (false).
	headerBtn autoExclusive: (false).
	headerBtn autoRaise: (true).
	headerBtn buttonStyle: (#textBesideIcon).
	headerBtn setProperty: #objectName toValue: 'headerBtn'.
	unnamedMorph1 addMorphBack: headerBtn.
	unnamedMorph3 := UiSpacer new.
	unnamedMorph3 extent: (74@10).
	unnamedMorph3 position: (156@8).
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
	closeBtn := UiToolButton new.
	closeBtn changeTableLayout.
	closeBtn extent: (18@18).
	closeBtn position: (231@4).
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
	closeBtn text: ('ToolButton').
	closeBtn color: ((Color r: 0.85 g: 0.85 b: 0.85)).
	closeBtn checkable: (false).
	closeBtn checked: (false).
	closeBtn autoExclusive: (false).
	closeBtn autoRaise: (true).
	closeBtn buttonStyle: (#iconOnly).
	closeBtn setProperty: #objectName toValue: 'closeBtn'.
	unnamedMorph1 addMorphBack: closeBtn.
	panel addMorphBack: unnamedMorph1.
	transcriptEdit := UiTextEdit new.
	transcriptEdit extent: (248@438).
	transcriptEdit position: (2@26).
	transcriptEdit hResizing: (#spaceFill).
	transcriptEdit vResizing: (#spaceFill).
	transcriptEdit minWidth: (2).
	transcriptEdit minHeight: (2).
	transcriptEdit cellInset: (0).
	transcriptEdit cellPositioning: (#center).
	transcriptEdit cellSpacing: (#none).
	transcriptEdit layoutInset: (0).
	transcriptEdit listCentering: (#topLeft).
	transcriptEdit listDirection: (#topToBottom).
	transcriptEdit listSpacing: (#none).
	transcriptEdit maxCellSize: (1073741823).
	transcriptEdit minCellSize: (0).
	transcriptEdit wrapCentering: (#topLeft).
	transcriptEdit wrapDirection: (#none).
	transcriptEdit frameFractions: (0@0 corner: 1@1).
	transcriptEdit frameOffsets: (0@0 corner: 0@0).
	transcriptEdit balloonText: ('Transcript').
	transcriptEdit balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1.0 alpha: 0.922)).
	transcriptEdit widgetResizable: (true).
	transcriptEdit horizontalScrollBarPolicy: (#alwaysOff).
	transcriptEdit verticalScrollBarPolicy: (#alwaysOn).
	transcriptEdit outerBorderWidth: (1).
	transcriptEdit scrollBarThickness: (9).
	transcriptEdit theText: ('').
	transcriptEdit readOnly: (false).
	transcriptEdit autoConvert: (false).
	transcriptEdit autoAccept: (true).
	transcriptEdit acceptOnFocusLost: (false).
	transcriptEdit scrollingMode: (#none).
	transcriptEdit scrollingLimit: (10).
	transcriptEdit setProperty: #objectName toValue: 'transcriptEdit'.
	panel addMorphBack: transcriptEdit.
	transcriptToolbar := UiContainer new.
	transcriptToolbar changeTableLayout.
	transcriptToolbar extent: (248@19).
	transcriptToolbar position: (2@466).
	transcriptToolbar hResizing: (#spaceFill).
	transcriptToolbar vResizing: (#shrinkWrap).
	transcriptToolbar minWidth: (2).
	transcriptToolbar minHeight: (2).
	transcriptToolbar cellInset: (4).
	transcriptToolbar cellPositioning: (#center).
	transcriptToolbar cellSpacing: (#none).
	transcriptToolbar layoutInset: (0).
	transcriptToolbar listCentering: (#topLeft).
	transcriptToolbar listDirection: (#leftToRight).
	transcriptToolbar listSpacing: (#none).
	transcriptToolbar maxCellSize: (1073741823).
	transcriptToolbar minCellSize: (0).
	transcriptToolbar wrapCentering: (#topLeft).
	transcriptToolbar wrapDirection: (#none).
	transcriptToolbar frameFractions: (0@0 corner: 1@1).
	transcriptToolbar frameOffsets: (0@0 corner: 0@0).
	transcriptToolbar balloonText: (nil).
	transcriptToolbar balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1.0 alpha: 0.922)).
	transcriptToolbar color: (Color transparent).
	transcriptToolbar borderWidth: (0).
	transcriptToolbar borderStyle2: (#simple).
	transcriptToolbar borderColor: (Color black).
	transcriptToolbar setProperty: #objectName toValue: 'transcriptToolbar'.
	timestampBtn := UiToolButton new.
	timestampBtn changeTableLayout.
	timestampBtn extent: (22@18).
	timestampBtn position: (2@466).
	timestampBtn hResizing: (#shrinkWrap).
	timestampBtn vResizing: (#shrinkWrap).
	timestampBtn minWidth: (2).
	timestampBtn minHeight: (2).
	timestampBtn cellInset: (4).
	timestampBtn cellPositioning: (#center).
	timestampBtn cellSpacing: (#none).
	timestampBtn layoutInset: (2@0 corner: 2@0).
	timestampBtn listCentering: (#topLeft).
	timestampBtn listDirection: (#leftToRight).
	timestampBtn listSpacing: (#none).
	timestampBtn maxCellSize: (1073741823).
	timestampBtn minCellSize: (0).
	timestampBtn wrapCentering: (#topLeft).
	timestampBtn wrapDirection: (#none).
	timestampBtn frameFractions: (0@0 corner: 1@1).
	timestampBtn frameOffsets: (0@0 corner: 0@0).
	timestampBtn balloonText: ('Show timestamp on
linebreaks.').
	timestampBtn balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1.0 alpha: 0.922)).
	timestampBtn enabled: (true).
	timestampBtn setProperty: #iconByDesigner toValue: 'UiFugueIcons clockFrameIcon'.
	timestampBtn icon: (UiFugueIcons clockFrameIcon).
	timestampBtn text: ('ToolButton').
	timestampBtn color: ((Color r: 0.85 g: 0.85 b: 0.85)).
	timestampBtn checkable: (true).
	timestampBtn checked: (true).
	timestampBtn autoExclusive: (false).
	timestampBtn autoRaise: (true).
	timestampBtn buttonStyle: (#iconOnly).
	timestampBtn setProperty: #objectName toValue: 'timestampBtn'.
	transcriptToolbar addMorphBack: timestampBtn.
	redrawBtn := UiToolButton new.
	redrawBtn changeTableLayout.
	redrawBtn extent: (22@18).
	redrawBtn position: (30@466).
	redrawBtn hResizing: (#shrinkWrap).
	redrawBtn vResizing: (#shrinkWrap).
	redrawBtn minWidth: (2).
	redrawBtn minHeight: (2).
	redrawBtn cellInset: (4).
	redrawBtn cellPositioning: (#center).
	redrawBtn cellSpacing: (#none).
	redrawBtn layoutInset: (2@0 corner: 2@0).
	redrawBtn listCentering: (#topLeft).
	redrawBtn listDirection: (#leftToRight).
	redrawBtn listSpacing: (#none).
	redrawBtn maxCellSize: (1073741823).
	redrawBtn minCellSize: (0).
	redrawBtn wrapCentering: (#topLeft).
	redrawBtn wrapDirection: (#none).
	redrawBtn frameFractions: (0@0 corner: 1@1).
	redrawBtn frameOffsets: (0@0 corner: 0@0).
	redrawBtn balloonText: ('Force immediate redraw.').
	redrawBtn balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1.0 alpha: 0.922)).
	redrawBtn enabled: (true).
	redrawBtn setProperty: #iconByDesigner toValue: 'UiFugueIcons arrowCircleDouble135Icon'.
	redrawBtn icon: (UiFugueIcons arrowCircleDouble135Icon).
	redrawBtn text: ('ToolButton').
	redrawBtn color: ((Color r: 0.85 g: 0.85 b: 0.85)).
	redrawBtn checkable: (true).
	redrawBtn checked: (true).
	redrawBtn autoExclusive: (false).
	redrawBtn autoRaise: (true).
	redrawBtn buttonStyle: (#iconOnly).
	redrawBtn setProperty: #objectName toValue: 'redrawBtn'.
	transcriptToolbar addMorphBack: redrawBtn.
	unnamedMorph4 := UiSpacer new.
	unnamedMorph4 extent: (164@10).
	unnamedMorph4 position: (58@471).
	unnamedMorph4 hResizing: (#spaceFill).
	unnamedMorph4 vResizing: (#rigid).
	unnamedMorph4 minWidth: (2).
	unnamedMorph4 minHeight: (2).
	unnamedMorph4 cellInset: (0).
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
	unnamedMorph4 balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1.0 alpha: 0.922)).
	unnamedMorph4 color: (Color blue).
	unnamedMorph4 borderWidth: (0).
	unnamedMorph4 borderStyle2: (#simple).
	unnamedMorph4 borderColor: (Color black).
	unnamedMorph4 orientation: (#horizontal).
	transcriptToolbar addMorphBack: unnamedMorph4.
	clearTranscriptBtn := UiToolButton new.
	clearTranscriptBtn changeTableLayout.
	clearTranscriptBtn extent: (22@18).
	clearTranscriptBtn position: (226@466).
	clearTranscriptBtn hResizing: (#shrinkWrap).
	clearTranscriptBtn vResizing: (#shrinkWrap).
	clearTranscriptBtn minWidth: (2).
	clearTranscriptBtn minHeight: (2).
	clearTranscriptBtn cellInset: (4).
	clearTranscriptBtn cellPositioning: (#center).
	clearTranscriptBtn cellSpacing: (#none).
	clearTranscriptBtn layoutInset: (2@0 corner: 2@0).
	clearTranscriptBtn listCentering: (#topLeft).
	clearTranscriptBtn listDirection: (#leftToRight).
	clearTranscriptBtn listSpacing: (#none).
	clearTranscriptBtn maxCellSize: (1073741823).
	clearTranscriptBtn minCellSize: (0).
	clearTranscriptBtn wrapCentering: (#topLeft).
	clearTranscriptBtn wrapDirection: (#none).
	clearTranscriptBtn frameFractions: (0@0 corner: 1@1).
	clearTranscriptBtn frameOffsets: (0@0 corner: 0@0).
	clearTranscriptBtn balloonText: ('Clear transcript').
	clearTranscriptBtn balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1.0 alpha: 0.922)).
	clearTranscriptBtn enabled: (true).
	clearTranscriptBtn setProperty: #iconByDesigner toValue: 'UiFugueIcons broomIcon'.
	clearTranscriptBtn icon: (UiFugueIcons broomIcon).
	clearTranscriptBtn text: ('ToolButton').
	clearTranscriptBtn color: ((Color r: 0.85 g: 0.85 b: 0.85)).
	clearTranscriptBtn checkable: (false).
	clearTranscriptBtn checked: (false).
	clearTranscriptBtn autoExclusive: (false).
	clearTranscriptBtn autoRaise: (true).
	clearTranscriptBtn buttonStyle: (#iconOnly).
	clearTranscriptBtn setProperty: #objectName toValue: 'clearTranscriptBtn'.
	transcriptToolbar addMorphBack: clearTranscriptBtn.
	panel addMorphBack: transcriptToolbar.
	panel setProperty: #uiClassName toValue: 'ViTranscriptEditor'.