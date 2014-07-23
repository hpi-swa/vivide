as yet unclassified
buildWith: viBuilder

	| windowSpec |
	windowSpec := ViWindowSpec new.
	windowSpec model: self.
	windowSpec label: #labelString.
	windowSpec children: OrderedCollection new.
	
	"Add outline."
	(self outline collect: [:querySpec |
		ViPaneSpec new querySpecs: {querySpec}]) in: [:paneSpecs |
			paneSpecs withIndexDo: [:paneSpec :idx |
				paneSpec frame: ((1.0 / paneSpecs size) * (idx-1)@0 corner: (1.0 / paneSpecs size) * idx @ 0.5).
				windowSpec children add: paneSpec]].
	
	"Add bottom area."
	windowSpec children
		add: (ViPaneSpec new
			querySpecs: self details;
			frame: (0@0.5 corner: 1.0@0.85);
			yourself);
		add: (ViPaneSpec new
			querySpecs: self annotation;
			frame: (0@0.85 corner: 1.0@1.0);
			yourself).
	
	"Specify dataflow between panes and initial objects."
	windowSpec
		dataflowSpecs: self dataflow;
		objects: self objects.
	
	^ viBuilder build: windowSpec