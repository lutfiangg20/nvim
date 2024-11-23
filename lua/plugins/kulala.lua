return {
  {
    "mistweaverco/kulala.nvim",
    -- default formatters/pathresolver for different content types
    opts = {
      contenttypes = {
        ["application/json"] = {
          ft = "json",
          formatter = { "jq", "." },
          pathresolver = require("kulala.parser.jsonpath").parse,
        },
        ["application/xml"] = {
          ft = "xml",
          formatter = { "xmllint", "--format", "-" },
          pathresolver = { "xmllint", "--xpath", "{{path}}", "-" },
        },
        ["text/html"] = {
          ft = "html",
          formatter = { "xmllint", "--format", "--html", "-" },
          pathresolver = {},
        },
      },
    },
  },
}
