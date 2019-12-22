

# Asynchronous PureScript

The modules *Aysnc*, *Basics*, *Fork*, *Parallel*, *Stack*, and *Sync* demonstrate the ability to work with asynchronous effects.  They are copied directly from Drew Olson's blog post, [Asynchronous Purescript](https://blog.drewolson.org/asynchronous-purescript).  Please read his blog post for further information.


## Installation

Install [purescript](https://www.npmjs.com/package/purescript) and [spago](https://www.npmjs.com/package/spago) locally using yarn or npm:

    yarn install


## Running these modules

After you have installed purescript and spago (see above).  You can run each of the modules with the following command, where *name<sub>of</sub><sub>module</sub>* is the name of one of the modules 
given above (e.g., *Fork*):

    $ yarn spago run name_of_module

More likely, you will want to time a module for comparison.  In this case, use the script *bundle* from the *package.json* file. Note that there are additional scripts you may wish to take advantage of as well.

    $ yarn bundle name_of_module
    $ time node index.js

