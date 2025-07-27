---@class PackageDependency
---@field name string package name as it will be used in file gen
---@field repo string git repo
---@field version? string git hash(#) or tag(v), defaults to "#HEAD"

---@class Package
---@field dependencies? PackageDependency[] List of package dependencies
---@field scripts? table<string, string> scripts that can be called with `nlpm script`

---@type Package
return {
  dependencies = {
    {
      name = "nttp",
      repo = "https://github.com/kmafeni04/nttp",
      version = "#d8406960aca9b3ca683c5993e0b12d604f644baa",
    },
    {
      name = "openssl-bindings-nelua",
      repo = "https://github.com/kmafeni04/openssl-bindings-nelua",
      version = "#6dc1704ab9b4c843a530059886d177aca4de8211",
    },
    {
      name = "dotenv-nelua",
      repo = "https://github.com/kmafeni04/dotenv-nelua",
      version = "#c1d05bea418212197b9bb2a9fb7d9fe8ca50e342",
    },
  },
  scripts = {
    test = "nelua --cc=tcc test.nelua",
    docs = "nelua --cc=tcc mail-doc.nelua",
  },
}
