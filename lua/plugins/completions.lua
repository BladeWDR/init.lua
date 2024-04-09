return {
  {
    "hrsh7th/cmp-nvim-lsp"
  },
  {
    "L3MON4D3/LuaSnip",
    dependencies = {
      "saadparwaiz1/cmp_luasnip",
      "rafamadriz/friendly-snippets",
    },
  },
  {
    "hrsh7th/nvim-cmp",
    config = function()
      local cmp = require("cmp")
      local ls = require("luasnip")
      require("luasnip.loaders.from_vscode").lazy_load()

            -- some shorthands...
            local snip = ls.snippet
            local node = ls.snippet_node
            local text = ls.text_node
            local insert = ls.insert_node
            local func = ls.function_node
            local choice = ls.choice_node
            local dynamicn = ls.dynamic_node

            local date = function() return {os.date('%Y-%m-%d')} end


            ls.add_snippets(nil, {
                markdown = {
                    snip({
                        trig = "---",
                        namr = "yaml frontmatter with tags",
                        dscr = "YAML frontmatter with tags."
                    },{
                        text{"---",
                        "tags:", "  -"},
                        insert(1, {" tag", "---"}),
                       }),
                },
                yaml = {
                    snip({
                            trig = "labels:",
                            namr = "traefik router spec",
                            dscr = "Typical traefik router setup.",
                        },
                        {
                           text({"labels:",
                                  "- traefik.enable=true",
                                  "- traefik.http.routers.routername.rule=Host(`subdomain.domain.tld`)",
                                  "- traefik.http.routers.routername.service=servicename",
                                  "- traefik.http.routers.routername.tls=true",
                                  "- traefik.http.services.servicename.loadbalancer.server.port=80",
                                  "- traefik.docker.network=proxy"})
                        }),
                },
            })

          cmp.setup({
            snippet = {
              expand = function(args)
                require("luasnip").lsp_expand(args.body)
              end,
            },
            window = {
              completion = cmp.config.window.bordered(),
              documentation = cmp.config.window.bordered(),
            },
            mapping = cmp.mapping.preset.insert({
              ["<C-b>"] = cmp.mapping.scroll_docs(-4),
              ["<C-f>"] = cmp.mapping.scroll_docs(4),
              ["<C-Space>"] = cmp.mapping.complete(),
              ["<C-e>"] = cmp.mapping.abort(),
              ["<CR>"] = cmp.mapping.confirm({ select = true }),
            }),
            sources = cmp.config.sources({
              { name = "nvim_lsp" },
              { name = "luasnip" }, -- For luasnip users.
              {name = "codeium"},
            },
            {
              { name = "buffer" },
            }),
          })
        end,
      },
    }
