private-event lists
allItemKinds

	^ (ViQueryChangeNotifier class organization listAtCategoryNamed: #'item kinds') 
		collect: [:sel | self perform: sel]