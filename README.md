# yard_issue

Yard gives an this error when generating documentation (e.g. `bundle exec yard`)

```
$ bundle exec yard
[warn]: Load Order / Name Resolution Problem on Hash:
-
Something is trying to call mixins on object Hash before it has been recognized.
This error usually means that you need to modify the order in which you parse files
so that Hash is parsed before methods or other objects attempt to access it.
-
YARD will recover from this error and continue to parse but you *may* have problems
with your generated documentation. You should probably fix this.
-

[error]: Unhandled exception in YARD::Handlers::Ruby::MixinHandler:
  in `lib/app.rb`:7:

	7: Hash.include Ext::Core::Hash::Filtering

Files:           2
Modules:         4 (    3 undocumented)
Classes:         1 (    0 undocumented)
Constants:       0 (    0 undocumented)
Attributes:      0 (    0 undocumented)
Methods:         2 (    0 undocumented)
 57.14% documented
 ```
