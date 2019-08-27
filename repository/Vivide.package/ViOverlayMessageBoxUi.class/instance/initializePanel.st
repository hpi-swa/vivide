ui - private
initializePanel
	"This code is auto-generated. DO NOT modify it because another generation step will overwrite all changes."
	
	panel := UiContainer new.
	panel changeProportionalLayout.
	panel extent: (181@276).
	panel position: (0@0).
	panel hResizing: (#rigid).
	panel vResizing: (#rigid).
	panel cellGap: (4).
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
	panel balloonText: ('').
	panel balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1.0 alpha: 0.941)).
	panel color: ((TranslucentColor r: 0.0 g: 0.0 b: 0.0 alpha: 0.486)).
	panel borderWidth: (0).
	panel borderStyle2: (#simple).
	panel borderColor: (Color black).
	panel setProperty: #objectName toValue: 'panel'.
	messageContainer := UiContainer new.
	messageContainer changeTableLayout.
	messageContainer extent: (74@80).
	messageContainer position: (53@58).
	messageContainer hResizing: (#shrinkWrap).
	messageContainer vResizing: (#spaceFill).
	messageContainer cellGap: (4).
	messageContainer cellPositioning: (#center).
	messageContainer cellSpacing: (#none).
	messageContainer layoutInset: (4).
	messageContainer listCentering: (#topLeft).
	messageContainer listDirection: (#leftToRight).
	messageContainer listSpacing: (#none).
	messageContainer maxCellSize: (1073741823).
	messageContainer minCellSize: (0).
	messageContainer wrapCentering: (#topLeft).
	messageContainer wrapDirection: (#none).
	messageContainer frameFractions: (0@0.2 corner: 1@0.5).
	messageContainer frameOffsets: (0@0 corner: 0@0).
	messageContainer balloonText: ('').
	messageContainer balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1.0 alpha: 0.945)).
	messageContainer color: (Color transparent).
	messageContainer borderWidth: (0).
	messageContainer borderStyle2: (#simple).
	messageContainer borderColor: (Color black).
	messageContainer setProperty: #objectName toValue: 'messageContainer'.
	iconLbl := UiLabel new.
	iconLbl changeTableLayout.
	iconLbl extent: (16@72).
	iconLbl position: (57@62).
	iconLbl hResizing: (#shrinkWrap).
	iconLbl vResizing: (#spaceFill).
	iconLbl cellGap: (0).
	iconLbl cellPositioning: (#center).
	iconLbl cellSpacing: (#none).
	iconLbl layoutInset: (0).
	iconLbl listCentering: (#topLeft).
	iconLbl listDirection: (#leftToRight).
	iconLbl listSpacing: (#none).
	iconLbl maxCellSize: (1073741823).
	iconLbl minCellSize: (0).
	iconLbl wrapCentering: (#topLeft).
	iconLbl wrapDirection: (#none).
	iconLbl frameFractions: (0@0 corner: 1@1).
	iconLbl frameOffsets: (0@0 corner: 0@0).
	iconLbl balloonText: ('').
	iconLbl balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1.0 alpha: 0.941)).
	iconLbl text: ('Label').
	iconLbl setProperty: #formByDesigner toValue: 'UiSilkIcons informationIcon'.
	iconLbl form: (UiSilkIcons informationIcon).
	iconLbl setProperty: #objectName toValue: 'iconLbl'.
	messageContainer addMorphBack: iconLbl.
	messageLbl := UiLabel new.
	messageLbl changeTableLayout.
	messageLbl extent: (46@72).
	messageLbl position: (77@62).
	messageLbl hResizing: (#shrinkWrap).
	messageLbl vResizing: (#spaceFill).
	messageLbl cellGap: (0).
	messageLbl cellPositioning: (#center).
	messageLbl cellSpacing: (#none).
	messageLbl layoutInset: (0).
	messageLbl listCentering: (#topLeft).
	messageLbl listDirection: (#leftToRight).
	messageLbl listSpacing: (#none).
	messageLbl maxCellSize: (1073741823).
	messageLbl minCellSize: (0).
	messageLbl wrapCentering: (#topLeft).
	messageLbl wrapDirection: (#none).
	messageLbl frameFractions: (0@0.2 corner: 1@0.4).
	messageLbl frameOffsets: (0@0 corner: 0@0).
	messageLbl balloonText: (nil).
	messageLbl balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1.0 alpha: 0.941)).
	messageLbl text: ('Message').
	messageLbl setProperty: #formByDesigner toValue: 'nil'.
	messageLbl form: (nil).
	messageLbl setProperty: #objectName toValue: 'messageLbl'.
	messageContainer addMorphBack: messageLbl.
	panel addMorphBack: messageContainer.
	titleLbl := UiLabel new.
	titleLbl changeTableLayout.
	titleLbl extent: (23@19).
	titleLbl position: (79@22).
	titleLbl hResizing: (#shrinkWrap).
	titleLbl vResizing: (#shrinkWrap).
	titleLbl cellGap: (0).
	titleLbl cellPositioning: (#center).
	titleLbl cellSpacing: (#none).
	titleLbl layoutInset: (0).
	titleLbl listCentering: (#topLeft).
	titleLbl listDirection: (#leftToRight).
	titleLbl listSpacing: (#none).
	titleLbl maxCellSize: (1073741823).
	titleLbl minCellSize: (0).
	titleLbl wrapCentering: (#topLeft).
	titleLbl wrapDirection: (#none).
	titleLbl frameFractions: (0@0 corner: 1@0.2).
	titleLbl frameOffsets: (0@0 corner: 0@0).
	titleLbl balloonText: ('').
	titleLbl balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1.0 alpha: 0.929)).
	titleLbl text: ('Title').
	titleLbl setProperty: #formByDesigner toValue: 'nil'.
	titleLbl form: (nil).
	titleLbl setProperty: #objectName toValue: 'titleLbl'.
	panel addMorphBack: titleLbl.
	buttonContainer := UiContainer new.
	buttonContainer changeTableLayout.
	buttonContainer extent: (173@134).
	buttonContainer position: (4@138).
	buttonContainer hResizing: (#spaceFill).
	buttonContainer vResizing: (#spaceFill).
	buttonContainer cellGap: (4).
	buttonContainer cellPositioning: (#center).
	buttonContainer cellSpacing: (#none).
	buttonContainer layoutInset: (16).
	buttonContainer listCentering: (#topLeft).
	buttonContainer listDirection: (#topToBottom).
	buttonContainer listSpacing: (#none).
	buttonContainer maxCellSize: (1073741823).
	buttonContainer minCellSize: (0).
	buttonContainer wrapCentering: (#topLeft).
	buttonContainer wrapDirection: (#none).
	buttonContainer frameFractions: (0@0.5 corner: 1@1).
	buttonContainer frameOffsets: (0@0 corner: 0@0).
	buttonContainer balloonText: (nil).
	buttonContainer balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1.0 alpha: 0.941)).
	buttonContainer color: (Color transparent).
	buttonContainer borderWidth: (0).
	buttonContainer borderStyle2: (#simple).
	buttonContainer borderColor: (Color black).
	buttonContainer setProperty: #objectName toValue: 'buttonContainer'.
	panel addMorphBack: buttonContainer.
	panel setProperty: #uiClassName toValue: 'ViOverlayMessageBox'.