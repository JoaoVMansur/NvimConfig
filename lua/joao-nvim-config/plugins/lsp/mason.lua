-- import mason plugin safely local mason_status, mason = pcall(require, "mason")
local mason_status, mason = pcall(require,"mason")
if not mason_status then
  return
end

-- import mason-lspconfig plugin safely
local mason_lspconfig_status, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lspconfig_status then
  return
end


-- enable mason
mason.setup()

mason_lspconfig.setup({
  -- list of servers for mason to install
  ensure_installed = {
    "dockerls",
    "docker_compose_language_service",
    "gopls",
    "jdtls",
    "tsserver",
    "pyright",
    "rubocop",
    "html",
    "cssls",
    "lua_ls",
  },
  automatic_installation = true, -- not the same as ensure_installed
  })
