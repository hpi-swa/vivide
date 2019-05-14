triggers for steps
stepRenamed: aQueryStep from: oldName to: newName

	self trigger: ((ViRenamedStepEvent item: aQueryStep kind: self class stepKind)
		oldName: oldName;
		newName: newName;
		oldIcon: aQueryStep icon "no change").