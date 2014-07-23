as yet unclassified
doClick: aNode

	(self data: self clickedSelector for: aNode) value.
	
	self flag: #hacky. "mt: View stuff should not know that much about those events..."
	ViObjectChangeNotifier uniqueInstance objectChanged: aNode object.