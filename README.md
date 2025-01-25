# Present

Hey, this is a dope plugin that lets you present markdown files.
 
# Features: Neovim Lua Execution

Can execute code in lua block, when you have them in a slide

```lua
print("Hello world", 28)
```


# Usage

```lua
require("present").start_presentation {}
```
Use `n`, and `p` to navigate markdown slides

Or use `PresentStart` command

# Features: Other Languages

Can execute code in language block, when you have them in a slide

You may need to configure this with `opts.executors`, Javascript is provided by default

```javascript
console.log({myfield: true, other: false})
```

# Credits

teej_dv
joshua1nine
