events - script configuration
step: aStep next: oldNextStep changedTo: newNextStep

	self trigger: ((ViScriptChangeEvent item: aStep change: #NextChanged)
		oldNext: oldNextStep;
		newNext: newNextStep;
		yourself).