actions
addStep
	"Insert a new script step after thisStep including a script editor."

	| editor newStep |	
	newStep := '[:in :out | out addAll: in]' asScript.
	newStep setProperty: #isNew toValue: true. "Show script wizard."
	newStep adoptOrganization: self thisStep organization.
	
	newStep next: self thisStep next.
	self thisStep next: newStep.

	ViLoggingService trigger: {#message -> 'Script part created.'}.

	editor := self class new.
	editor object: newStep.
	
	"Tell my environment about this new editor so that users can actually see it."
	self artifactCreated: editor. 