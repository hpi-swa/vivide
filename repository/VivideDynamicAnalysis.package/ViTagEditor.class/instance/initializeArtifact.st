initialization
initializeArtifact

	self ui initializePanel.
	self artifact: self ui panel.
	
	self ui descriptionEdit
		colorFocusBackground: Color white;
		colorFocusBorder: (Color gray: 0.3);
		colorBackground: Color white;
		balloonText: 'Type a description for this tag here.'  .
	
	self ui tagnameEdit font: (StrikeFont familyName: 'Bitmap Segoe UI' pointSize: 9 emphasized: 1).
	
	self connect: self ui tagnameEdit signal: #editingFinished: toSelector: #updateTagname:.
	self connect: self ui descriptionEdit signal: #editingFinished: toSelector: #updateDescription:.
	self connect: self ui iconBtn signal: #clicked: toSelector: #onIconClicked.
	
	self resizeHandle target: self ui descriptionEdit.
	
	self ui dropTarget text: '<font color="#AAAAAA" size="9">Drop objects here<br>to attach tag.</font>' asHtmlText.