initialization
initialize

	super initialize.
	
	dropColor := Color green muchDarker.
	dropShadow := ViShadow new
		orientation: #horizontal;
		text: '<font color="#888888">Drop object here.</font>' asHtmlText asMorph;
		acceptedDropBlock: [:object | false];
		addScriptBtn.
	self connect: dropShadow signal: #codeSnippetRequested toSelector: #appendCodeSnippet.
	
	self
		layoutPolicy: ViArtifactContainerColumnLayout new;
		acceptedDropAreas: #(between);
		acceptedDropBlock: [:passenger :type | #(artifact objects queries operation operations) includes: type];
		addMorphBack: dropShadow.