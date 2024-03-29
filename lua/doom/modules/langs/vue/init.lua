local vue = {}

vue.settings = {
  --- Disables auto installing the treesitter
  --- @type boolean
  disable_treesitter = false,
  --- Treesitter grammars to install
  --- @type string|string[]
  treesitter_grammars = {
    "vue",
    "css",
    "scss",
    "html",
    "scss",
    "javascript",
    "typescript",
  },

  --- Disables default LSP config
  --- @type boolean
  disable_lsp = false,
  --- Name of the language server
  --- @type string
  lsp_name = "vue-langage-server",

  --- Disables null-ls formatting sources
  --- @type boolean
  disable_formatting = false,
  --- Mason.nvim package to auto install the formatter from
  --- @type string
  formatting_package = "eslint_d",
  --- String to access the null_ls diagnositcs provider
  --- @type string
  formatting_provider = "builtins.formatting.eslint_d",
  --- Function to configure null-ls formatter
  --- @type function|nil
  formatting_config = nil,

  --- Disables null-ls diagnostic sources
  --- @type boolean
  disable_diagnostics = false,
  --- Mason.nvim package to auto install the diagnostics provider from
  --- @type string
  diagnostics_package = "eslint_d",
  --- String to access the null_ls diagnositcs provider
  --- @type string
  diagnostics_provider = "builtins.diagnostics.eslint_d",
  --- Function to configure null-ls diagnostics
  --- @type function|nil
  diagnostics_config = nil,

  --- Disables null-ls diagnostic sources
  --- @type boolean
  disable_code_actions = false,
  --- Mason.nvim package to auto install the code_actions provider from
  --- @type string
  code_actions_package = "eslint_d",
  --- String to access the null_ls diagnositcs provider
  --- @type string
  code_actions_provider = "builtins.code_actions.eslint_d",
  --- Function to configure null-ls code_actions
  --- @type function|nil
  code_actions_config = nil,

  -- Volar API lspconfig options
  volar_api = {
    default_config = {
      filetypes = { "vue" },
      -- If you want to use Volar's Take Over Mode (if you know, you know)
      --filetypes = { 'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue', 'json' },
      init_options = {
        languageFeatures = {
          implementation = true, -- new in @volar/vue-language-server v0.33
          references = true,
          definition = true,
          typeDefinition = true,
          callHierarchy = true,
          hover = true,
          rename = true,
          renameFileRefactoring = true,
          signatureHelp = true,
          codeAction = true,
          workspaceSymbol = true,
          completion = {
            defaultTagNameCase = "both",
            defaultAttrNameCase = "kebabCase",
            getDocumentNameCasesRequest = false,
            getDocumentSelectionRequest = false,
          },
        },
      },
    },
  },
  -- Volar Document lspconfig options
  volar_doc = {
    default_config = {
      filetypes = { "vue" },
      -- If you want to use Volar's Take Over Mode (if you know, you know):
      --filetypes = { 'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue', 'json' },
      init_options = {
        languageFeatures = {
          implementation = true, -- new in @volar/vue-language-server v0.33
          documentHighlight = true,
          documentLink = true,
          codeLens = { showReferencesNotification = true },
          -- not supported - https://github.com/neovim/neovim/pull/15723
          semanticTokens = false,
          diagnostics = true,
          schemaRequestService = true,
        },
      },
    },
  },
  volar_html = {
    default_config = {
      filetypes = { "vue" },
      -- If you want to use Volar's Take Over Mode (if you know, you know), intentionally no 'json':
      --filetypes = { 'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue' },
      init_options = {
        documentFeatures = {
          selectionRange = true,
          foldingRange = true,
          linkedEditingRange = true,
          documentSymbol = true,
          -- not supported - https://github.com/neovim/neovim/pull/13654
          documentColor = false,
          documentFormatting = {
            defaultPrintWidth = 100,
          },
        },
      },
    },
  },
}

local langs_utils = require("doom.modules.langs.utils")
vue.autocmds = {
  {
    "FileType",
    "vue",
    langs_utils.wrap_language_setup("vue", function()
      if not vue.settings.disable_lsp then
        local lspconfig_util = require("lspconfig/util")

        local function get_typescript_server_path(root_dir)
          print("Searching for ts server path at " .. root_dir)
          local tsdk_path = ""
          local function check_dir(path)
            tsdk_path = lspconfig_util.path.join(path, "node_modules", "typescript", "lib")
            local tsserverlibrary_path = lspconfig_util.path.join(tsdk_path, "tsserverlibrary.js")
            if lspconfig_util.path.exists(tsserverlibrary_path) then
              return true
            end
          end

          if lspconfig_util.search_ancestors(root_dir, check_dir) then
            return tsdk_path
          end
          return false
        end

        -- volar needs works with typescript server, needs to get the typescript server from the project's node_modules
        local volar_root_dir = lspconfig_util.root_pattern("package.json")

        -- Contains base configuration necessary for volar to start
        local build_base_config = function(volar_handle)
          local fallback_sdk_path = lspconfig_util.path.join(
            volar_handle:get_install_path(),
            "node_modules",
            "typescript",
            "lib"
          )
          return {
            default_config = {
              cmd = { "vue-language-server", "--stdio" },
              -- cmd = volar.document_config.default_config.cmd,
              root_dir = volar_root_dir,
              on_new_config = function(new_config, new_root_dir)
                if
                  new_config.init_options
                  and new_config.init_options.typescript
                  and new_config.init_options.typescript.tsdk == ""
                then
                  new_config.init_options.typescript.tsdk = get_typescript_server_path(new_root_dir)
                    or fallback_sdk_path
                end
              end,
              init_options = {
                typescript = {
                  tsdk = "",
                },
              },
            },
          }
        end

        -- Need to pre-install volar language server to get the install location
        langs_utils.use_mason_package("vue-language-server", function(handle)
          print(vim.inspect(handle:get_install_path()))

          -- Setup Volar API
          local volar_api_config = vim.tbl_deep_extend(
            "force",
            {},
            doom.langs.vue.settings.volar_api,
            build_base_config(handle)
          )
          langs_utils.use_lsp_mason("volar", {
            name = "volar_api",
            config = volar_api_config,
          })

          -- Setup Volar DOC
          local volar_doc_config = vim.tbl_deep_extend(
            "force",
            {},
            doom.langs.vue.settings.volar_doc,
            build_base_config(handle)
          )
          langs_utils.use_lsp_mason("volar", {
            name = "volar_doc",
            config = volar_doc_config,
          })

          -- Setup Volar HTML
          local volar_html_config = vim.tbl_deep_extend(
            "force",
            {},
            doom.langs.vue.settings.volar_html,
            build_base_config(handle)
          )
          langs_utils.use_lsp_mason("volar", {
            name = "volar_html",
            config = volar_html_config,
          })
        end)
      end

      if not vue.settings.disable_treesitter then
        langs_utils.use_tree_sitter(vue.settings.treesitter_grammars)
      end

      if not vue.settings.disable_formatting then
        langs_utils.use_null_ls(
          vue.settings.formatting_package,
          vue.settings.formatting_provider,
          vue.settings.formatting_config
        )
      end
      if not vue.settings.disable_diagnostics then
        langs_utils.use_null_ls(
          vue.settings.diagnostics_package,
          vue.settings.diagnostics_provider,
          vue.settings.diagnostics_config
        )
      end
      if not vue.settings.disable_code_actions then
        langs_utils.use_null_ls(
          vue.settings.code_actions_package,
          vue.settings.code_actions_provider,
          vue.settings.code_actions_config
        )
      end
    end),
    once = true,
  },
}

return vue
