examples
exampleScripts

	^ (ViProfile new
		initializeMinimal;
		organization) orderedSteps select: [:step | step nextLabel notNil or: [step isSpecial]]