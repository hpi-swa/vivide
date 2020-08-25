actions
exploreAllViewsForScript: aStep using: someObjects
	"Try out all available views from the system."

{
	[:input :script | {
		{input}.
		script.
		SystemNavigation default allClassesImplementingTrait: TViObjectView} asTuples]
-> {#view -> ViListView. #orientation -> #vertical. #dragType -> #pane}.

[:tuples | tuples sorted: [:t1 :t2 | t1 third name <= t2 third name]  ]. 

[:input :script :view | 
	ViPane new
		script: (script deepCopy viewClass: view);
		objects: input;
		extent: 200@200;
		fullBounds;
		yourself].

[:pane |
	#text -> pane script viewClass name.
	#icon -> (([pane imageForm] on: Error do: [:e | UiFugueIcons exclamationRedIcon]) scaledIntoFormOfSize: 100@100)]
		-> {#itemOrientation -> #vertical. #hAlignment -> #center}.
	


} asScript openScriptWith: {{someObjects. aStep}}.