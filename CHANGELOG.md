# Templates CHANGELOG

---

## Master

### Bug Fixes

_None_

### Breaking Changes

_None_

### New Features

* XCAssets: exposed getter for image name string.  
  [Abbey Jackson](https://github.com/abbeyjackson)
  [#85](https://github.com/SwiftGen/templates/pull/85)
* XCAssets: exposed getter for color name string.  
  [Stephan Diederich](https://github.com/diederich)
  [#87](https://github.com/SwiftGen/templates/pull/87)
* Allows to set all properties as `public` by using `--param publicAccess` on all templates.  
  [Olivier Halligon](https://github.com/AliSoftware)
  [#84](https://github.com/SwiftGen/templates/pull/84)
  [Txai Wieser](https://github.com/txaiwieser)
  [#81](https://github.com/SwiftGen/templates/pull/81)

### Internal Changes

_None_

## 2.2.0

### Bug Fixes

* Fonts: fix code which checks if a font is already registered.  
  [Vladimir Burdukov](https://github.com/chipp)
  [#77](https://github.com/SwiftGen/templates/pull/77)
* Documentation: Fix link to generated XCAssets example.  
  [Alvar Hansen](https://github.com/allu22)
  [#80](https://github.com/SwiftGen/templates/pull/80)
* SwiftLint rules: Disabled the `superfluous_disable_command` rule
  for all `swiftlint:disable` exceptions in all templates.  
  [Olivier Halligon](https://github.com/AliSoftware)
  [SwiftGen/SwiftGen#334](https://github.com/SwiftGen/SwiftGen/issues/334)
  [#83](https://github.com/SwiftGen/templates/pull/83)

### New Features

* Storyboards: Added a new `ignoreTargetModule` parameter if you're using storyboards in multiple targets, to avoid issues with the generated code.  
  [Julien Quéré](https://github.com/juli1quere)
  [#36](https://github.com/SwiftGen/templates/pull/36)

## 2.1.1

### Bug Fixes

* Colors and XCAssets: fix a naming conflict of `typealias`es.  
  [David Jennes](https://github.com/djbe) 
  [#76](https://github.com/SwiftGen/templates/pull/76)
* XCAssets: fix a compatibility issue with the swift 3 template on Xcode 8.  
  [David Jennes](https://github.com/djbe) 
  [#76](https://github.com/SwiftGen/templates/pull/76)

## 2.1.0

### Bug Fixes

* Templates now use the "pretty" mode of the `swiftIdentifier` filter, fixing some issues with identifiers starting with a number.  
  [David Jennes](https://github.com/djbe) 
  [#74](https://github.com/SwiftGen/templates/pull/74)

### New Features

* Swift 4 templates.  
  [David Jennes](https://github.com/djbe) 
  [#67](https://github.com/SwiftGen/templates/pull/67)
* XCAssets: Added support for named colors.  
  [David Jennes](https://github.com/djbe) 
  [#68](https://github.com/SwiftGen/templates/pull/68)
* Fonts: the path to fonts will now default to just the font filename, but you can disable this behaviour by enabling the `preservePath` parameter.  
  [David Jennes](https://github.com/djbe) 
  [#71](https://github.com/SwiftGen/templates/pull/71)
* Colors: new template that uses `#colorLiteral`s.  
  [David Jennes](https://github.com/djbe) 
  [#72](https://github.com/SwiftGen/templates/pull/72)

### Internal Changes

* Ensure `swiftlint` is run using `bundler`.  
  [David Jennes](https://github.com/djbe) 
  [#66](https://github.com/SwiftGen/templates/pull/66)

## 2.0.0

### Bug Fixes

* Fixed `swiftlint` errors for the latest version.  
  [David Jennes](https://github.com/djbe) 
  [#46](https://github.com/SwiftGen/templates/pull/46)
* Images: fixed issue with catalogs that have an empty folder.  
  [David Jennes](https://github.com/djbe) 
  [#51](https://github.com/SwiftGen/templates/pull/51)
* Fonts: fixed font registration mechanism, which was broken in some situations.  
  [David Jennes](https://github.com/djbe) 
  [#58](https://github.com/SwiftGen/templates/pull/58)

### Breaking Changes

* Templates are now organized in subdirectories for each command.  
  [David Jennes](https://github.com/djbe)
  [#13](https://github.com/SwiftGen/templates/issues/13)
* Update templates to use the Stencil built-in `join` filter instead of our own.  
  [David Jennes](https://github.com/djbe)
  [#22](https://github.com/SwiftGen/templates/issues/22)
* Many deprecated templates have been removed, and others have been renamed to reflect new behaviours. We've prepared a migration guide which you can find here: [Documentation/MigrationGuide](https://github.com/SwiftGen/templates/blob/master/Documentation/MigrationGuide.md#templates-20-migration-guide).  
  [David Jennes](https://github.com/djbe)
  [#47](https://github.com/SwiftGen/templates/issues/47)
* Since Swift 2 is no longer actively supported, we now consider those templates as "legacy" and cannot guarantee that there won't be issues with the generated code.  
  [David Jennes](https://github.com/djbe)
  [#53](https://github.com/SwiftGen/templates/issues/53)
* The iOS and macOS storyboard templates have been unified into one. The generated code also no longer uses enum cases for scenes but instead uses a generic struct. See the documentation for some examples.  
  [David Jennes](https://github.com/djbe)
  [#57](https://github.com/SwiftGen/templates/issues/57)
* The code generated by SwiftGen 5's storyboard templates is not retro-compatible with the one previously generated by SwiftGen 4.x. You'll find all the details with steps for adapting your codebase to the new API in the [migration guide](https://github.com/SwiftGen/templates/blob/master/Documentation/MigrationGuide.md#functionality-changes-in-20-swiftgen-50). We've also provided a [compatibility template](https://github.com/SwiftGen/templates/wiki/SwiftGen-5.0-Migration:-compatibility-template) in the wiki to make that migration easier and automatable.  
  [Olivier Halligon](https://github.com/AliSoftware)
  [#65](https://github.com/SwiftGen/templates/issues/65)

### New Features

* Strings: the templates have been updated to support multiple string tables.  
  [David Jennes](https://github.com/djbe)
  [#49](https://github.com/SwiftGen/templates/issues/49)
* Colors: the templates have been updated to support multiple color palettes.  
  [David Jennes](https://github.com/djbe)
  [#55](https://github.com/SwiftGen/templates/issues/55)

### Internal Changes

* Removed deprecated variables. See [SwiftGenKit#5](https://github.com/SwiftGen/SwiftGenKit/issues/5) for more information.   
  [David Jennes](https://github.com/djbe)
  [#45](https://github.com/SwiftGen/templates/issues/45)
  [#50](https://github.com/SwiftGen/templates/issues/50)
* We can now re-generate the output files used for testing by using the "Generate Output" Xcode scheme.  
  [David Jennes](https://github.com/djbe)
  [#56](https://github.com/SwiftGen/templates/issues/56)

## 1.1.0

### Bug Fixes

* Fixed `swiftlint` warnings in generated color extensions.  
  [Roman Laitarenko](https://github.com/evil159) 
  [#32](https://github.com/SwiftGen/templates/pull/32)
* The storyboards macOS swift3 template was missing the "current target" module ignore code.  
  [David Jennes](https://github.com/djbe)
  [#27](https://github.com/SwiftGen/templates/issues/27)
* Fix the `images` templates so that they work on watchOS again.  
  [David Jennes](https://github.com/djbe)
  [SwiftGen/SwiftGen#275](https://github.com/SwiftGen/SwiftGen/issues/275)
  [#30](https://github.com/SwiftGen/templates/issues/30)

### New Features

* More variables have been deprecated, while new variables have been added. See [SwiftGenKit#5](https://github.com/SwiftGen/SwiftGenKit/issues/5) for more information.   
  [David Jennes](https://github.com/djbe)
  [#28](https://github.com/SwiftGen/templates/issues/28)
  [#39](https://github.com/SwiftGen/templates/issues/39)
  [#43](https://github.com/SwiftGen/templates/issues/43)

### Internal Changes

* Switch from Travis CI to Circle CI, clean up the Rakefile in the process.  
  [David Jennes](https://github.com/djbe)
  [#24](https://github.com/SwiftGen/templates/issues/24)
  [#40](https://github.com/SwiftGen/templates/issues/40)
* Disable SwiftLint `conditional_returns_on_newline` in the font template.  
  [Tom Baranes](https://github.com/tbaranes)
  [#33](https://github.com/SwiftGen/templates/pull/33)
* Updated templates to use Stencil 0.9.0 features, such as for loops with a where condition.  
  [David Jennes](https://github.com/djbe) 
  [#42](https://github.com/SwiftGen/templates/issues/42)

## 1.0.0

_The templates tagged with this version are the ones embedded in SwiftGen 4.2._

### Internal Changes

* Initial tagging of templates as part of being split in their own repository.  
* Templates are now linted and unit-tested, to ensure the code generated compiles properly.  
  [David Jennes](https://github.com/djbe)
  [#5](https://github.com/SwiftGen/templates/issues/5)
  [#6](https://github.com/SwiftGen/templates/issues/6)
  [#15](https://github.com/SwiftGen/templates/pull/15)
  [#16](https://github.com/SwiftGen/templates/pull/16)

### Bug Fixes

* Use `escapeReservedKeywords` in all templates — to ensure compilation even for scenes named with a reserved keyword.  
  [David Jennes](https://github.com/djbe)
  [#3](https://github.com/SwiftGen/templates/issues/3)
  [#14](https://github.com/SwiftGen/templates/pull/14)
* Storyboards templates don't `import` your app module anymore, removing that annoying warning.  
  [David Jennes](https://github.com/djbe)
  [#19](https://github.com/SwiftGen/templates/pull/19)
  * It works by checking the environment variable `PRODUCT_MODULE_NAME`, which is automatically injected by Xcode if you run `swiftgen` as part of a Script Build Phase in your Xcode project.
  * If you don't use `swiftgen` in a Script Build Phase of your Xcode project but manually in the terminal, you can instead use  `swiftgen storyboards --param module=YourAppModuleName …` when invoking SwiftGen to inject it manually instead.

### New Features

* Use an explicit bundle parameter to support frameworks for all templates.  
  [@NachoSoto](https://github.com/NachoSoto)
  [David Jennes](https://github.com/djbe)
  [SwiftGen/SwiftGen#255](https://github.com/SwiftGen/SwiftGen/pull/255)
  [#17](https://github.com/SwiftGen/templates/pull/17)
* Use `enum` instead of `struct` for namespacing in all templates.  
  [David Jennes](https://github.com/djbe)
  [#7](https://github.com/SwiftGen/templates/issues/7)
* Reworked templates to get rid of deprecated Stencil variables.  
  [David Jennes](https://github.com/djbe)
  [#8](https://github.com/SwiftGen/templates/issues/8)
  [#9](https://github.com/SwiftGen/templates/issues/9)


## Pre-1.0.0

_See SwitftGen's own CHANGELOG pre SwiftGen 4.2 version, before the refactoring that led us to split the code in frameworks_

### Deprecations

Note that in preparation for the upcoming SwiftGen 5.0, some variables available in the SwiftGen's Stencil templates have been deprecated and will be renamed. To prepare for SwiftGen 5.0, **we strongly advise to migrate your custom templates so they use the new variables** (already available in SwiftGen 4.2 / SwiftGenKit 1.0.1) instead of the old ones, so that they will continue to work in SwiftGen 5.0

See [the migration guide in SwiftGen's wiki](https://github.com/SwiftGen/SwiftGen/wiki/Migration-Guides).
