initialization
initializeMetaScriptFromPane: pane

	| metaScript metaWidget |
	metaScript := ViScriptPart convertPanes: {pane asDictionary}.
	metaWidget := ViMultiPaneTiled new addPane: pane; yourself.

	"Adopt organization of single pane's script."
	metaScript adoptOrganization: pane currentQuery organization.
	metaWidget adoptOrganization: pane currentQuery organization.

	self view: metaWidget.
	"Avoid unnecessary updates by setting inst vars directly."
	queries := pane queries.
	self model resetSilently.
	self model firstStep next: metaScript.
	self model firstStep objects: pane objects.
	metaWidget model: self model.
	self recentQueriesAdd: metaScript.

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