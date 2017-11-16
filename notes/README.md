# Session notes

Before you can interact with the code in this folder, you must either [clone](https://help.github.com/articles/cloning-a-repository/) or [download](https://github.com/txsmith/delft-haskell-study-group/archive/master.zip) this repository on your own machine.


## Setup your editor with highlighting
To try the code and samples in this folder, do the following:
  - Run `stack build intero` on the command line in this folder. This may take a few minutes when you do this the first time!
  - Meanwhile, install [VS Code](https://code.visualstudio.com/)
  - Add the following extensions to VS Code:
    - [Haskell Syntax Highlighting](https://marketplace.visualstudio.com/items?itemName=justusadam.language-haskell)
    - [Haskero](https://marketplace.visualstudio.com/items?itemName=Vans.haskero)
  - When the `stack build intero` command finishes, restart VS Code.

After this you should be able to open a Haskell source file from the `src` directory. The code should be highlighted, and any syntax/type errors will be displayed by **red** markings in the editor. Green markings are compiler warnings and can for now be ignored. Try uncommenting the definitions in `src/Chapter4/CorrectingSyntax.hs` and saving the file to see this effect.

If you have any questions about this, place a message in the Slack!

## Interacting with the exercise code
Running GHCi:
- Open a command line in this folder (`haskell-study-group/notes`)
- Run `stack ghci`
- All modules present in the `src` folder are automatically loaded.

## Altering your GHCi prompt
When you run `stack ghci` with the default prompt, GHCi will print all loaded modules every time you enter an expression. If you're like me and dislike this behavior, you can alter what GHCi prints as prompt for every expression.

Run the following whenever you enter a new GHCi session:
```
:set prompt "λ > "
```
