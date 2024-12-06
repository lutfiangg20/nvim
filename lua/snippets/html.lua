local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

-- List of common HTML tags with snippets
ls.add_snippets("html", {
  -- Generic tag snippet
  s("tag", {
    t("<"),
    i(1, "tag"), -- Tag name
    t(" "),
    i(2, "attributes"),
    t(">"), -- Attributes
    t({ "" }),
    i(3, "content"), -- Content
    t({ "</" }),
    i(1),
    t(">"), -- Closing tag
  }),
  -- Specific snippets for common HTML tags
  s("div", {
    t("<div"),
    i(1, ' class="container"'),
    t(">"),
    t({ "", "\t" }),
    i(2, "Content"), -- Content placeholder
    t({ "", "</div>" }),
  }),
  s("p", {
    t("<p>"),
    i(1, "Paragraph content"),
    t("</p>"),
  }),
  s("a", {
    t('<a href="'),
    i(1, "#"),
    t('">'),
    i(2, "Link text"),
    t("</a>"),
  }),
  s("img", {
    t('<img src="'),
    i(1, "image.jpg"),
    t('" alt="'),
    i(2, "description"),
    t('" />'),
  }),
  s("ul", {
    t("<ul>"),
    t({ "", "\t<li>" }),
    i(1, "List item 1"),
    t("</li>"),
    t({ "", "\t<li>" }),
    i(2, "List item 2"),
    t("</li>"),
    t({ "", "</ul>" }),
  }),
  s("table", {
    t("<table>"),
    t({ "", "\t<tr>" }),
    t({ "", "\t\t<th>" }),
    i(1, "Header 1"),
    t("</th>"),
    t({ "", "\t\t<th>" }),
    i(2, "Header 2"),
    t("</th>"),
    t({ "", "\t</tr>" }),
    t({ "", "\t<tr>" }),
    t({ "", "\t\t<td>" }),
    i(3, "Data 1"),
    t("</td>"),
    t({ "", "\t\t<td>" }),
    i(4, "Data 2"),
    t("</td>"),
    t({ "", "\t</tr>" }),
    t({ "", "</table>" }),
  }),
  s("form", {
    t('<form action="'),
    i(1, "/submit"),
    t('" method="'),
    i(2, "POST"),
    t('">'),
    t({ "", "\t" }),
    i(3, "Form content"),
    t({ "", "</form>" }),
  }),
  s("button", {
    t('<button type="'),
    i(1, "button"),
    t('">'),
    i(2, "Button text"),
    t("</button>"),
  }),
  s("input", {
    t('<input type="'),
    i(1, "text"),
    t('" name="'),
    i(2, "name"),
    t('" />'),
  }),
  s("h1", {
    t("<h1>"),
    i(1, "Heading 1"),
    t("</h1>"),
  }),
  s("h2", {
    t("<h2>"),
    i(1, "Heading 2"),
    t("</h2>"),
  }),
  s("h3", {
    t("<h3>"),
    i(1, "Heading 3"),
    t("</h3>"),
  }),
  s("span", {
    t("<span>"),
    i(1, "Inline content"),
    t("</span>"),
  }),
  s("script", {
    t("<script>"),
    t({ "", "\t" }),
    i(1, "// JavaScript code"),
    t({ "", "</script>" }),
  }),
  s("style", {
    t("<style>"),
    t({ "", "\t" }),
    i(1, "/* CSS code */"),
    t({ "", "</style>" }),
  }),
})
