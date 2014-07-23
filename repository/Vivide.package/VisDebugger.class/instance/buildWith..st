as yet unclassified
buildWith: viBuilder

	| windowSpec |
	windowSpec := ViWindowSpec new.
	windowSpec model: self.
	windowSpec label: #labelString.
	windowSpec children: OrderedCollection new.
	
	windowSpec children
		add: (ViPaneSpec new
			querySpecs: self stack;
			frame: (0@0 corner: 1@0.22);
			yourself);
		add: (ViPaneSpec new
			querySpecs: self annotation;
			frame: (0@0.22 corner: 1.0@0.35);
			yourself);
		add: (ViPaneSpec new
			querySpecs: self code;
			frame: (0@0.35 corner: 1.0@0.8);
			yourself);
		add: (ViPaneSpec new
			querySpecs: self receiverOutline;
			frame: (0@0.8 corner: 0.2@1);
			yourself);
		add: (ViPaneSpec new
			querySpecs: self receiverDetails;
			frame: (0.2@0.8 corner: 0.5@1);
			yourself);
		add: (ViPaneSpec new
			querySpecs: self contextOutline;
			frame: (0.5@0.8 corner: 0.7@1);
			yourself);
		add: (ViPaneSpec new
			querySpecs: self contextDetails;
			frame: (0.7@0.8 corner: 1@1);
			yourself).

	
	"Specify dataflow between panes and initial objects."
	windowSpec
		dataflowSpecs: self dataflow;
		objects: self objects.
	
	^ viBuilder build: windowSpec