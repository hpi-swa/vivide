memento - cleanup
clear
	"Selections will be restored automatically be the view. Just keep the current index expanded."
	
	self refreshModel.
	self sourceCodeEdit theText: ''.