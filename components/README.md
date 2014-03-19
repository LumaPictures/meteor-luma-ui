# Components

Each component consists of a [template file](sidebar/default_sidebar_content.html) and a [coffee file](default_sidebar_content.coffee).

The template file is responsible for providing the component markup, list iteration, and basic view logic.

The coffee file is responsible for parsing the data context and event binding.

Both files are served to the client and will be instantiated whenever the component is rendered.

## TODO

Several of these components are still fairly static and should be abstracted further.