## Deprecated templates in 2.0 (SwiftGen 5.0)

The two general themes for this version are:

- Templates now reside in the subfolder corresponding to their subcommand (`colors`, `fonts`, ...) intead of the filename being prefixed with it.
- The `default` template doesn't exist anymore, templates now specify which swift version they support.

Below is a list of renamed and removed templates, grouped by subcommand. If your template isn't listed, you don't need to do anything.

### Colors

| Old | New | Reason |
| --- | --- | ------ |
| default | swift2 | |
| rawvalues | **deleted** | Seldomly used |

### Fonts

| Old | New | Reason |
| --- | --- | ------ |
| default | swift2 | |

### Images / XCAssets

| Old | New | Reason |
| --- | --- | ------ |
| all-values | **deleted** | The other templates by default now generate an `allValues` static constant |
| default | **deleted** | Deprecated by `dot-syntax` (now called `swift2`) |
| dot-syntax | swift2 | |
| dot-syntax-swift3 | swift3 | |
| swift3 | **deleted** | Deprecated by `dot-syntax-swift3` (now called `swift3`) |

⚠️ The `images` subcommand from SwiftGen 4.x has been renamed `xcassets` in SwiftGen 5.0, so be sure to put those templates in a `xcassets` subfolder and not an `images` subfolder.

### Storyboards

| Old | New | Reason |
| --- | --- | ------ |
| default | swift2 | |
| lowercase | **deleted** | No longer needed since we prefix classes with their module |
| osx-default | **deleted** | Unified with the iOS template, just use `swift2` |
| osx-lowercase | **deleted** | No longer needed since we prefix classes with their module |
| osx-swift3 | **deleted** | Unified with the iOS template, just use `swift3` |
| uppercase | **deleted** | No longer needed since we prefix classes with their module |

### Strings

| Old | New | Reason |
| --- | --- | ------ |
| default | flat-swift2 | |
| dot-syntax | structured-swift2 | |
| dot-syntax-swift3 | structured-swift3 | |
| genstrings | **deleted** | Seldomly used |
| no-comments-swift3 | **deleted ** | The other templates now support a `noComments` parameter |
| structured | **deleted** | Deprecated by `dot-syntax` (now called `structured-swift2/3`) |
| swift3 | flat-swift3 | |
