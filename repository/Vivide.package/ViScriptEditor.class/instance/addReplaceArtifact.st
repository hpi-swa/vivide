as yet unclassified
addReplaceArtifact
	"Prepend a script. Exchange myself with a new script. Use old one in new container after me."
	
	| editor |
	self flag: #todo. "mt: Copy properties too?"
	editor := ViScriptEditor new.
	editor object: (ViScriptPart new
		adoptOrganization: self object organization;
		sourceCode: self object sourceCode).
	
	self object sourceCode: '[:in :out | out addAll: in]'.
		
	"Insert directly."
	editor object next: self object next.
	self object next: editor object.

	ViLoggingService trigger: {#message -> 'Script part created.'}.

	self artifactCreated: editor.
	self activateWizard.