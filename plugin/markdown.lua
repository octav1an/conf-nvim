vim.pack.add({
    "https://github.com/tadmccorkle/markdown.nvim"
})

require('markdown').setup()

vim.keymap.set("n", "<leader>mt", function()
    -- Generate the TOC in the current window's location list
    vim.cmd("MDToc")

    -- Close the native location-list window
    vim.cmd("lclose")

    -- Open the same location list using fzf-lua
    require("fzf-lua").loclist({
        winopts = {
            height = 0.85,
            width = 0.85,
            preview = {
                layout = "vertical",
                vertical = "down:50%",
            },
        },
        fzf_opts = {
            ["--delimiter"] = ":",
            ["--with-nth"] = "2..",
        },
    })
end, { desc = "Find in markdown TOC" })

