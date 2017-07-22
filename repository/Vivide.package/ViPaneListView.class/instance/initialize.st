as yet unclassified
initialize

	super initialize.
	
	content := ViMorph new
		color: Color transparent;
		layoutPolicy: (ViVerticalLayout new cellInset: 5; yourself);
		wantsHaloFromClick: true;
		yourself.
	
	self
		color: Color transparent;
		widget: content;
		widgetResizable: true;
		horizontalScrollBarPolicy: #alwaysOff;
		verticalScrollBarPolicy: #asNeeded;
		outerBorderWidth: 0.
	
	self verticalScrollBar
		singleStep: 20;
		outerBorderWidth: 0;
		color: Color transparent.
	self transformMorph
		color: Color transparent.
		
	self sgConnectSignal: #mouseWheelUp: to: self verticalScrollBar selector: #decreaseValueBySingleStep.
	self sgConnectSignal: #mouseWheelDown: to: self verticalScrollBar selector: #increaseValueBySingleStep.
