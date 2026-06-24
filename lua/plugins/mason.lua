return {
    "mason-org/mason.nvim",
    opts = function(_, opts)
        if opts.ensure_installed then
            local filtered = {}
            for _, pkg in ipairs(opts.ensure_installed) do
                -- Add any debuggers you want to block to this list
                if pkg ~= "codelldb" and pkg ~= "shfmt" then
                    table.insert(filtered, pkg)
                end
            end
            opts.ensure_installed = filtered
        end
    end,
}
