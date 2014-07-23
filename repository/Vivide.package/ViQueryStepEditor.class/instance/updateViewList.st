updating
updateViewList

	self ui viewCombo
		clear;
		addItemListFrom: ViQueryOrganizer default viewDefinitions
		using: [:def :node | node at: #object put: def; text: def id].