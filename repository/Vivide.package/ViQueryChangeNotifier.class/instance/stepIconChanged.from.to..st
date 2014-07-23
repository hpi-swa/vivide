system triggers
stepIconChanged: aQueryStep from: oldForm to: newForm

	self trigger: ((ViRenamedStepEvent item: aQueryStep kind: self class stepKind)
		oldName: aQueryStep label;
		newName: aQueryStep label;
		oldIcon: oldForm).