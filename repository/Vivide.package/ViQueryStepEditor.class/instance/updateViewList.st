updating
updateViewList

	self ui viewCombo
		clear;
		addItemListFrom: ViQueryOrganizer active viewDefinitions
		using: [:def :node | node at: #object put: def; text: def id].