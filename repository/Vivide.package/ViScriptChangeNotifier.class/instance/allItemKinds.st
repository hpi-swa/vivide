private-event lists
allItemKinds

	^ (ViScriptChangeNotifier class organization listAtCategoryNamed: #'item kinds') 
		collect: [:sel | self perform: sel]