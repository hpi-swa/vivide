initialization
initializeUi

	super initializeUi.
		
	"call stack"
	self ui listView
		model: ViCallstackModel new;
		listSpec: ((UiItemViewColumnSpec newFrom: {#text -> #object. #icon -> #object})
				textConverter: [:contextPart |
					((ViLabelStringService doObject: contextPart),
					' <font color="#AAAAAA">',
					(ViObjectOriginService doObject: contextPart),
					'</font>') asHtmlText];
				iconConverter: [:contextPart | ViIconService doObject: contextPart]);
		dragDropSpec: (ViUnboxingDragDropSpec new
			dropEnabled: false;
			key: #object;
			dragTransferType: #objects;
			source: self);
		"Do not show Signals internals."
		selectBlock: [:node | (#(
			emitSignal:arguments:sender:
			emitSignalInOwnerChain:arguments:sender:
			emit emitAlways emitInOwnerChain) includes: (node at: #object) selector) not
				and: [(node at: #object) selector ~= #do:
					or: [(#(
						emitSignal:arguments:sender:
						emitSignalInOwnerChain:arguments:sender:) includes: (node at: #object) sender selector) not ]]].
	
	self ui listView groupSpec hideIfEmpty: true.
		
	self connect: self ui listView signal: #currentRowChanged: toSelector: #triggerChangeContext:.

	self connect: self ui listView signal: #doubleClicked: toSelector: #requestArtifact:.
	self connect: self ui listView signal: #returnPressed: toSelector: #requestArtifact:.
	
	self connect: self ui listView signal: #selectionChanged: toSelector: #onSelectionChanged:.

	"Operations"
	self connect: self ui proceedBtn signal: #clicked: toSelector: #proceed.
	self connect: self ui restartBtn signal: #clicked: toSelector: #restart.
	self connect: self ui intoBtn signal: #clicked: toSelector: #stepInto.
	self connect: self ui overBtn signal: #clicked: toSelector: #stepOver.
	self connect: self ui throughBtn signal: #clicked: toSelector: #stepThroughBlock.