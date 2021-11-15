local h = require("null-ls.helpers")
local methods = require("null-ls.methods")

local DIAGNOSTICS = methods.internal.DIAGNOSTICS

return h.make_builtin({
    method = DIAGNOSTICS,
    filetypes = { "nix" },
    generator_opts = {
        command = "statix",
        args = { "check", "--stdin", "--format=errfmt" },
        format = "line",
        to_stdin = true,
        on_output = h.diagnostics.from_pattern(
            [[>(%d+):(%d+):(.):(%d+):(.*)]],
            { "row", "col", "severity", "code", "message" },
            {
                severities = {
                    E = h.diagnostics.severities["error"],
                    W = h.diagnostics.severities["warning"],
                },
            }
        ),
    },
    factory = h.generator_factory,
})