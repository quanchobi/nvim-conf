return {
    -- Mason
    {'williamboman/mason.nvim',
    opts = function()
        -- Mason setup
        local mason_status, mason = pcall(require, 'mason')
        if not mason_status then
            return
        end

        mason.setup({
            ui = {
                border = 'rounded',
                keymaps = {
                    toggle_package_expand = "<CR>",
                    install_package = "i",
                    update_package = "u",
                    check_package_version = "c",
                    update_all_packages = "U",
                    check_outdated_packages = "C",
                    uninstall_package = "X",
                    cancel_installation = "<C-c>",
                    apply_language_filter = "<C-f>",
                },
            },
        })
    end
},
}
