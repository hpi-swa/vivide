initialization
initializeMetaScriptFromPane: pane

	| metaScript metaWidget |
	self flag: #metaScript.
	
	metaScript := ViScriptStep convertPanes: {pane asDictionary}.
	metaWidget := ViMultiPaneTiled new addPane: pane; yourself.

	"Preserve window color and label."
	metaScript color: pane currentQuery color.
	metaScript label: pane currentQuery label.

	"Adopt organization of single pane's script."
	metaScript adoptOrganization: pane currentQuery organization.
	metaWidget adoptOrganization: pane currentQuery organization.

	self view: metaWidget.
	"Avoid unnecessary updates by setting inst vars directly."
	queries := pane queries.
	self model firstStep: metaScript.
	self model inputForChildren: pane objects.
	metaWidget model: self model.
	self recentScriptsAdd: metaScript.

	"Update connections."
	pane connections copy
		do: [:c |
			c detach.
			c source = pane ifTrue: [c source: self].
			c target = pane ifTrue: [c target: self].
			c attachSilently].
			
	"Setup connection to outer pane not ealier to avoid unnecessary updates."
	(ViResultsConnection from: metaWidget to: pane) attachSilently.
	(ViSelectionConnection from: pane to: metaWidget) attachSilently.