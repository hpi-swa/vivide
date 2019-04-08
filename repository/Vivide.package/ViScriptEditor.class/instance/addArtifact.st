actions
addArtifact

	| editor script |	
	script := ViScriptPart new sourceCode: '[:in :out | out addAll: in]'.		
	script adoptOrganization: self object organization.
	
	"Insert directly."
	script next: self object next.
	self object next: script.

	ViLoggingService trigger: {#message -> 'Script part created.'}.

	editor := self class new.
	editor object: script.
	
	self artifactCreated: editor.
	editor activateWizard.
	
	"We need to update the pane highlights because only now we have a system window."
	editor addPaneHighlights.