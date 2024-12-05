local ls = require("luasnip") -- Import LuaSnip
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets("javascriptreact", { -- For JavaScript React files
  s("rafce", { -- Trigger 'rafce'
    t("import React from 'react';"),
    t({ "", "", "const " }),
    i(1, "ComponentName"),
    t(" = () => {"),
    t({ "", "\treturn (" }),
    t({ "", "\t\t<>" }), -- Fragment shorthand
    t({ "", "\t\t\t" }),
    i(2, "Content"), -- Component body placeholder
    t({ "", "\t\t</>" }),
    t({ "", "\t);" }),
    t({ "", "};", "" }),
    t({ "", "export default " }),
    i(1, "ComponentName"),
    t(";"),
  }),
})

ls.add_snippets("typescriptreact", { -- For TypeScript React files
  s("rafce", { -- Trigger 'rafce'
    t("import React from 'react';"),
    t({ "", "", "interface Props {" }),
    t({ "", "\t" }),
    i(1, "propName"),
    t(": "),
    i(2, "propType"),
    t(";"),
    t({ "", "}", "", "" }),
    t("const "),
    i(3, "ComponentName"),
    t(": React.FC<Props> = () => {"),
    t({ "", "\treturn (" }),
    t({ "", "\t\t<>" }), -- Fragment shorthand
    t({ "", "\t\t\t" }),
    i(4, "Content"), -- Component body placeholder
    t({ "", "\t\t</>" }),
    t({ "", "\t);" }),
    t({ "", "};", "" }),
    t({ "", "export default " }),
    i(3, "ComponentName"),
    t(";"),
  }),
})
