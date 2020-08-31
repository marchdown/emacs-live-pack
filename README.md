## My Emacs Live Pack

### init.el and config/

`init.el` uses `live-load-config-file` to load several files with domain-specific config.

This text should be visible on load and is supposed to be accompanied by a desktop workplace with Edwina and Eyebrowse keeping track of state.


### lib instructions

 Libraries and packages live in `lib` (or perhaps in `vendor`), add them with
 `live-add-pack-lib`. For example, if you have the external library bar
 stored in lib which contains the file `baz.el` which you wish to
 require, this may be achieved by:

    (live-add-pack-lib "bar")
    (require 'baz)

 Have fun!
 
 :)
