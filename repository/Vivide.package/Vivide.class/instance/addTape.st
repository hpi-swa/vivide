initialization
addTape

	| scrollArea |
	scrollArea := UiScrollArea new
		verticalScrollBarPolicy: #alwaysOff;
		horizontalScrollBarPolicy: #asNeeded;  
		widgetResizable: true;
		widget: ViUnboundedTape new;
		outerBorderWidth: 0.
		
	scrollArea transformMorph
		color: Color transparent;
		drawCacheActive: true. "speedup redraw"

	scrollArea horizontalScrollBar
		singleStep: 50;
		outerBorderWidth: 1;
		color: Color transparent.
			
	scrollArea sgConnectSignal: #focusChanged: toSelector: #scrollToShowGlobal:duration: pattern: #(1 =400).
	
	self connect: scrollArea widget signal: #closed to: scrollArea selector: #delete.
	
	tapeContainer addMorphBack: scrollArea.