require('neorg').setup {
    load = {
        ["core.defaults"] = {
        },
        ["core.concealer"] = {},
        ["core.dirman"] = {
            config = {
                workspaces = {
                    cs = "~/notes/cs",
                    other = "~/notes/other",
                    journal = "~/notes/journal",
                }
            }
        }
    }
}
