as yet unclassified
updateUi

	| taskIndex |
	uiAnswer removeAllMorphs.

	self currentTask ifNil: [
		uiLabel text: ' '.
		uiProgress
			currentValue: uiProgress maximum;
			text: 'All tasks finished.'.
		uiAnswer addMorph: (UiLabel new text: 'Well done! Go tell the instructor.'; vResizing: #spaceFill; hResizing: #spaceFill; yourself).
		uiNext enabled: false.
		^ self].

	taskIndex := self experiment tasks indexOf: self currentTask. 			
	uiLabel text: ('<b>Task {1}</b> {2}' format: {taskIndex. self currentTask description}) asHtmlText.
	uiAnswer
		addMorph: (self currentTask runner ui
			hResizing: #spaceFill;
			vResizing: #spaceFill;
			yourself).

	uiProgress
		maximum: self experiment tasks size;
		currentValue: taskIndex-1;
		text: ('{1} task(s) left' format: {self experiment tasks size - taskIndex + 1}).