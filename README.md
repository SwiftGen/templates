# SwiftGen Templates

[![CircleCI](https://circleci.com/gh/SwiftGen/templates/tree/master.svg?style=svg)](https://circleci.com/gh/SwiftGen/templates/tree/master)
![Swift 3.0](https://img.shields.io/badge/Swift-3.0-orange.svg)

This repository contains [Stencil](https://github.com/kylef/Stencil) templates that are dedicated for being used with [SwiftGen](https://github.com/SwiftGen/swiftgen).

## What are templates for?

The aim of SwiftGen is to parse your resources (asset catalogs, fonts, storyboards, …) and generate Swift code (constants, etc) from them.

But everybody can have a different code style policy about what they want the generated code to look like:

* Some people prefer a different level of indentation than others, some prefer tabs, some prefer spaces
* Some people are still using Swift 2, while some other people need the generated code to be Swift 3.
* Some people will prefer the generated code to be hierarchical, some will prefer a flat list of constants.
* Some people will want different names for the generated structures or enums
* Some people will have special needs about the generated code

And that's exactly what templates are for: to allow people to describe how they want their generated code to look like so that the generated code will fit exactly what they need.

## How do they work with SwiftGen?

In practice, when SwiftGen parses your various resources (images, fonts, …), it generates a dictionary representation of those resources (an array of image names, an array of dictionaries representing a font with all its variants, etc), that is then used as the input for the template you choose to use.

For example, when parsing images, SwiftGen will generate a dictionary representation like this:

```
[
  "images": [
    "foo",
    "bar",
    "baz",
  ]
]
```

_(this is a partial example for the sake of simplifying the explanation; see the documentation for the full generated structure)_

Then this dictionary is used as input to feed your templates with variables. In your template, you can access the variable named `images` and iterate over each string inside it to generate some Swift code as needed. For example if your template `mytemplate.stencil` looks like this:

```
enum Assets: String {
  {% for imageName in images %}
  case {{imageName}} = "{{imageName}}"
  {% endfor %}
}
```

Then, given the above dictionary generated internally by SwiftGen when parsing your asset catalog, the generated code will look like this:

```
enum Assets: String {
  case foo = "foo"
  case bar = "bar"
  case baz = "baz"
}
```

To use that template, you'd simply invoke SwiftGen using `swiftgen images -p path/to/mytemplate.stencil path/to/your/Images.xcassets` and SwiftGen will use that custom template of yours at the specified path.

## Stencil

SwiftGen uses [Stencil](https://github.com/kylef/Stencil) as its template engine.
This means that you'll use the syntax explained in Stencil's documentation to write your templates for SwiftGen.
See the Stencil dedicated documentation for more information.

## Templates bundled with SwiftGen

SwiftGen comes bundled with commonly used templates for the various type of resources.

For each type of resource (images, fonts, etc…), SwiftGen provides a number of templates for common use cases (at least one for each swift version), that you can select using the `-t` option when invoking SwiftGen (e.g. `swiftgen images -t swift2 path/to/your/Images.xcassets`). The `-t` and `-p` options have the same purpose (selecting a specific template you want to use when asking SwiftGen to generate the output Swift code), `-t` simply selects the template by name (looking for a template with this name among the templates bundled with SwiftGen itself) while `-p` allows you to indicate an arbitrary using a path.

## Templates documentation

You can find the documentation for each template — including its name, typical use case, what can be customized in it, how the typical generated output will look like, etc — in the [Documentation](https://github.com/SwiftGen/templates/tree/master/Documentation) directory in this repository.

This can help you choose which template is right for you depending on your needs and use case. Keep in mind that some templates can be customized by providing parameters such as `--param enumName=MyEnum`. Each template documents the supported parameters and their purpose.

## Creating your own templates

Creating your own templates is just a matter of creating a Stencil template (using the tags and filters you need using the syntax documented in Stencil) then use it.

The best way to start creating your own template is by duplicating an existing template as a starting point, then modifying the copy to your needs. You can do that easily using the following commands:

```sh
# Duplicate the images swift3.stencil template and rediret the output to a new mytemplate.stencil file
$ swiftgen templates cat images swift3 > mytemplate.stencil
# Then modify the duplicated template using your favorite text editor to tweak it to your needs
$ edit mytemplate.stencil
# Then use your new template instead of the swift3 one when invoking SwiftGen
$ swiftgen images -p mytemplate.stencil path/to/your/Images.xcassets
```

To learn more about creating your own template, see the dedicated documentation in the `documentation/` directory of this repository.
