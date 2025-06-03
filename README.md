# my neovim config
## Philosophy
- should be able to spin one up on a whim (fast)
- unintrusive and intuitive
- doesn't assume you have a fancy terminal with extra features
- performance focused

## lsp, dap config
support for 
- cpp (clangd/lldb)
- python (pylyzer/debugpy)
- haskell (hls/haskell-debug-adapter)
- lua (lua\_ls/none)
- ocaml (ocamllsp/none)

## Keymaps
Leader '`<Space>`' is the spacebar

1.  **Misc**

    | Mode   | Keymap        | Action                      | Description                          |
    | :----- | :------------ | :-------------------------- | :----------------------------------- |
    | Normal | `<Space> + nh`    | `:nohl<CR>`                 | Clear search highlighting            |
    | Normal | `<Space> + <Shift> + + `     | `<C-a>`                     | Increment number under cursor        |
    | Normal | `<Space> + -`     | `<C-x>`                     | Decrement number under cursor        |

2.  **Split Management**

    | Mode   | Keymap        | Action                      | Description                                   |
    | :----- | :------------ | :-------------------------- | :-------------------------------------------- |
    | Normal | `<Space> + <Shift> + >`     | `<C-w>v`                    | Open a new vertical split to the right        |
    | Normal | `<Space> + v`     | `<C-w>s`                    | Open a new horizontal split to the bottom     |
    | Normal | `<Space> + =`     | `<C-w>=`                    | Equalize the sizes of all splits              |
    | Normal | `<Space> + x`     | `:close<CR>`                | Close the current split/window                |

3.  **Split Resizing**

    | Mode   | Keymap         | Action                      | Description                                         |
    | :----- | :------------- | :-------------------------- | :-------------------------------------------------- |
    | Normal | `<Space> + <Up>`     | `<C-w>+`                    | Increase height of current window                   |
    | Normal | `<Space> + <Down>`   | `<C-w>-`                    | Decrease height of current window                   |
    | Normal | `<Space> + <Left>`   | `<C-w>>`                    | Increase width of current window                    |
    | Normal | `<Space> + <Right>`  | `<C-w><`                    | Decrease width of current window                    |
    | Normal | `<Space> + sh`     | `<C-w>_`                    | Maximize window height or set to specific count (e.g., `10<Space>sh` sets height to 10) |
    | Normal | `<Space> + sw`     | `<C-w>\|`                   | Maximize window width or set to specific count (e.g., `10<Space>sw` sets width to 10)  |

4.  **Split Navigation**

    | Mode   | Keymap        | Action                      | Description                          |
    | :----- | :------------ | :-------------------------- | :----------------------------------- |
    | Normal | `<Space> + w`     | `<C-w>k`                    | Switch to the window above           |
    | Normal | `<Space> + a`     | `<C-w>h`                    | Switch to the window to the left     |
    | Normal | `<Space> + s`     | `<C-w>j`                    | Switch to the window below           |
    | Normal | `<Space> + d`     | `<C-w>l`                    | Switch to the window to the right    |

5.  **Nvim-tree**

    | Mode   | Keymap        | Action                      | Description                          |
    | :----- | :------------ | :-------------------------- | :----------------------------------- |
    | Normal | `<Space> + <Shift> + <`     | `:NvimTreeToggle<CR>`       | Toggle the NvimTree sidebar          |
    | Normal | `<Space> + e`     | `:NvimTreeFocus<CR>`        | Focus on the NvimTree sidebar        |

6.  **Tabs**

    | Mode   | Keymap        | Action                      | Description                          |
    | :----- | :------------ | :-------------------------- | :----------------------------------- |
    | Normal | `<Space> + to`    | `:tabnew<CR>`               | Open a new tab                       |
    | Normal | `<Space> + tx`    | `:tabclose<CR>`             | Close the current tab                |
    | Normal | `<Space> + tn`    | `:tabn<CR>`                 | Move to the next tab to the right    |
    | Normal | `<Space> + tp`    | `:tabp<CR>`                 | Move to the previous tab to the left |

7.  **LSP (Language Server Protocol)**

    | Mode   | Keymap        | Action                      | Description                                   |
    | :----- | :------------ | :-------------------------- | :-------------------------------------------- |
    | Normal | `<Space> + r`     | `lsp.buf.references`        | Find all references of the symbol under cursor |
    | Normal | `<Space> + u`     | `lsp.buf.definition`        | Go to the definition of the symbol under cursor |
    | Normal | `<Space> + n`     | `lsp.buf.rename`            | Rename the symbol under cursor                |
    | Normal | `<Space> + k`     | `lsp.buf.hover`             | Show hover information for the symbol under cursor |
    | Normal | `<Space> + f`     | `require("conform").format` | Format code using Conform (async, with LSP fallback) |

8.  **DAP (Debugger Adapter Protocol)**

    | Mode   | Keymap           | Action                              | Description                         |
    | :----- | :--------------- | :---------------------------------- | :---------------------------------- |
    | Normal | `<Space> + <Space> + b`  | `require("dap").toggle_breakpoint()`| Add/remove breakpoint at current line |
    | Normal | `<Space> + <Space> + c`  | `require("dap").continue()`         | Continue debugger execution         |
    | Normal | `<Space> + <Space> + r`  | `require("dap").run_to_cursor()`    | Run debugger to current cursor position |
    | Normal | `<Space> + <Space> + q`  | `require("dap").terminate()`        | Terminate the debugger session      |

9.  **LazyGit**

    | Mode   | Keymap        | Action                      | Description                          |
    | :----- | :------------ | :-------------------------- | :----------------------------------- |
    | Normal | `<Space> + lg`    | `<Cmd>LazyGit<CR>`          | Open the LazyGit TUI                 |



