-- https://github.com/eclipse-jdtls/eclipse.jdt.ls?tab=readme-ov-file#installation
local config = {
    cmd = {'/Users/neriam/source/jdt-language-server/bin/jdtls'},
    root_dir = vim.fs.dirname(vim.fs.find({'gradlew', '.git', 'mvnw'}, { upward = true })[1]),
}
require('jdtls').start_or_attach(config)
print("we are here")
