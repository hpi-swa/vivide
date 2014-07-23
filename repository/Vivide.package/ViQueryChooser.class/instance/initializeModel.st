initialization
initializeModel

	self assert: view notNil.

	model := ViQueryStateListModel new.
	model supportedTypes: #(queries).
	
	"Both specs are model-specific."
	view
		listSpec: (UiItemViewColumnSpec newFrom: {#text -> #text. #icon -> #icon.});
		dragDropSpec: (ViUnboxingDragDropSpec new
			dropEnabled: true;
			key: #state;
			dropMode: #between;
			dragTransferType: #queries;
			source: model).
			
	"Last drag-and-drop settings."
	self connect: view signal: #objectDropped:type:from: to: model selector: #addObject:type:from:.
	self connect: view signal: #objectDropped:type:from:afterNode: to: model selector: #insertObject:type:from:after:.
	self connect: view signal: #objectDropped:type:from:beforeNode: to: model selector: #insertObject:type:from:before:.