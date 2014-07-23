actions
generate

	| generator shots httpResult |
	shots := Dictionary new.

	self screenshots childrenInDefaultGroup do: [:node |
		shots at: node id put: (Dictionary newFrom: {
			#form -> (node checked
				ifTrue: [node form]
				ifFalse: [self maskedFormFor: node form]).
			#top -> node top.
			#left -> node left.
			#zIndex -> node zIndex.
			#label -> node formName.
		
		})].
		
	generator := ViFeedbackReportGenerator new.
	generator
		dataForWorldSubmorphs: shots;
		dataForDebuggers: self debuggers;
		dataForQueries: self queries;
		dataForVersions: self versions;  
		topic: self currentTopic;
		mood: self currentMood;
		emailAddress: self emailAddress;
		message: self ui messageEdit theText asString.  
		
	Cursor wait showWhile: [httpResult := generator sendReportToWeb].
	self flag: #todo. "mt: Interpret result and notify user if anything went wrong."
	UserDialogBoxMorph inform: ('Report was sent successfully to: {1}.

You can configure this using Squeak preferences.' format: {Preferences
			valueOfPreference: #feedbackServer
			ifAbsent: ['127.0.0.1:8080']}).