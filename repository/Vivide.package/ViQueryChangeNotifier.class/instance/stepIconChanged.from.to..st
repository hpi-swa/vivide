triggers for steps
stepIconChanged: aQueryStep from: oldForm to: newForm

	self stepPropertiesChanged: aQueryStep from: {#icon -> oldForm}  to: {#icon -> newForm}. 