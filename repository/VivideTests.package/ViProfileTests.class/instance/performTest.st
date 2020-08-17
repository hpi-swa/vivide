private
performTest
	"Avoid system-change notifications because this converter adds, modifies, and removes methods from the archive class."
	
	SystemChangeNotifier uniqueInstance
		doSilently: [super performTest].