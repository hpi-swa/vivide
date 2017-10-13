as yet unclassified
exploreViews
	"Try out all available views from the system."
	
{
	[:input :script | {
		{input}.
		script.
		SystemNavigation default allClassesImplementingTrait: TViObjectView} asTuples]
-> {#view -> ViListView. #orientation -> #vertical. #dragType -> #pane}.

[:input :script :view | ({ViMultiPaneWidget } anySatisfy: [:ea | view includesBehavior: ea]) ifTrue: [nil] ifFalse: [ { {input. script. view} } ] ]. 

[:tuples | tuples sorted: [:t1 :t2 | t1 third name <= t2 third name]  ]. 

[:input :script :view | 
	ViPane new
		objects: input;
		currentQuery: (script deepCopy viewClass: view);
		extent: 200@200;
		fullBounds;
		yourself].

[:pane |
	#text -> pane currentQuery viewClass name.
	#icon -> (([pane imageForm] on: Error do: [:e | UiFugueIcons exclamationRedIcon]) scaledIntoFormOfSize: 100@100)]
		-> {#itemOrientation -> #vertical. #hAlignment -> #center}.
	


} asScript openScriptWith: {{self input. self object}}.