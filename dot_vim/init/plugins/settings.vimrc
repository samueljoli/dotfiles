let plugin_settings = '~/.vim/init/plugins'

" Loop over plugin specific settings vim files and source
for fpath in split(globpath(plugin_settings, '*.vim'), '\n')
    execute 'source' fpath
endfor
