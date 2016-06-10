import geb.binding.BindingUpdater
import geb.Browser

import static cucumber.api.groovy.Hooks.*
import data.Data

Before() {
	Data.clearAlunos()
	
	bindingUpdater = new BindingUpdater(binding, new Browser())
	bindingUpdater.initialize()
}

After() {
	bindingUpdater.remove()
}