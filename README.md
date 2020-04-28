# How to read the ECMAScript specification

The [ECMAScript Language specification](https://tc39.es/ecma262/) (a.k.a. the
JavaScript specification, or ECMA-262) is a great resource for learning the
intricacies of how JavaScript works. However, it is a huge text that can be
confusing and intimidating at first.

[This document](https://timothygu.me/es-howto/) aims to make it easier to get
started with reading the ECMAScript spec.

## Helping out

The HTML document is generated using
[Bikeshed](https://tabatkins.github.io/bikeshed/), a document preprocessor. The
source file is located in `index.bs`. Feel free to improve this document by
submitting pull request that change this file.

To view the result of any changes to `index.bs`, you can locally regenerate
`index.html` by [installing](https://tabatkins.github.io/bikeshed/#installing)
Bikeshed first, and then running `make` from the project root directory.

If you do not want to install Bikeshed locally, then `make` will still work, by
uploading your local copy of `index.bs` to
[api.csswg.org](https://api.csswg.org/bikeshed/) which will then run Bikeshed
remotely. This process may produce a slightly different output than locally
installed Bikeshed, as it does not take into account the customized `.include`
files.

## License

[![Creative Commons
License](https://mirrors.creativecommons.org/presskit/buttons/80x15/svg/by-sa.svg)][cc-by-sa-4.0]
This work is licensed under a [Creative Commons Attribution-ShareAlike 4.0
International License][cc-by-sa-4.0], which is available at
https://creativecommons.org/licenses/by-sa/4.0/. Parts of this work may be from
another specification document. If so, those parts are instead covered by the
license of that specification document.

[cc-by-sa-4.0]: https://creativecommons.org/licenses/by-sa/4.0/
