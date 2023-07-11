These are my dotfiles. To install them:

    ./install.sh

To set up vim as the `.vimrc` here expects:

    mkdir -p ~/.vim/autoload ~/.vim/bundle
    curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

    pushd ~/.vim/bundle
        git clone https://github.com/nanotech/jellybeans.vim.git
        git clone https://github.com/scrooloose/nerdtree.git
    popd

There is a handy setup in this repository for setting up IDE-like tmux sessions
automatically inspired by [this post][1]. Each file in `~/.tmux` (`/tmux/` in
this repository) contains a configuration/template for a tmux session. You can
list them with the alias `tnsl`. Then, to create a templated session, you can
run the alias `tns mlir` (for example). This saves a good bit of time over
manually `cd`ing to the right directory, opening Vim, and then opening
NERDTree, scrolling to the right files, etc.

[1]: https://stackoverflow.com/a/5753059/321301
