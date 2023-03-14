
-- standalone
    return { "lervag/vimtex" }


--=========================================================================
-- vimtex settings
--=========================================================================
-- Viewer options: One may configure the viewer either by specifying a built-in
-- viewer method:
--vim.g.vimtex_view_method = "skim"
-- not all machines will have skim . . .
-- MachineName = vim.fn.system("hostname")
--MachineName = vim.fn.hostname()
--print(MachineName)
--if string.find(MachineName,"stanaley") then
--    print("hi stanley!")
--elseif string.find(MachineName,"chuchis") then
--    print("hi chuchis!")
--else
--    print("ERROR: machine name unknown, quitting . . .")
    -- how to exit from nvim altogether here???
    -- vim.fn.quit()
    -- vim.fn.exit()
    -- vim.sys.quit()
    -- vim.system.quit()
    -- print(nvim_get_namespaces())
--end

-- Or with a generic interface:
-- let g:vimtex_view_general_viewer = 'okular'
-- let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'


