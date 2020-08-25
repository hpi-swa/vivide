script selection - scripts
organization
	"For script (id) lookup."

	^ self script ifNotNil: [:step | step organization] ifNil: [
		(self firstOwnerSuchThat: [:m | m respondsTo: #organization])
			ifNil: [ViScriptOrganizer active]
			ifNotNil: [:paneOrPaneView | paneOrPaneView organization]]