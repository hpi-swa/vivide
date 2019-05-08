actions
addStep
	"Insert a new script step after thisStep including a script editor."

	| editor newStep |	
	newStep := '[:in :out | out addAll: in]' asScript.
	newStep adoptOrganization: self thisStep organization.
	
	newStep next: self thisStep next.
	self thisStep next: newStep.

	ViLoggingService trigger: {#message -> 'Script part created.'}.

	editor := self class new.
	editor object: newStep.
	
	"Tell my environment about this new editor so that users can actually see it."
	self artifactCreated: editor. 
	
	"New steps usually warrant the activation of the wizard to help edit."
	editor activateWizard.
	
	"We need to update the pane highlights because only now we have a system window."
	editor addPaneHighlights.