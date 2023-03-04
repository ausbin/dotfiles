These are my dotfiles. To install them:

    ./install.sh

To set up vim as the `.vimrc` here expects:

    mkdir -p ~/.vim/autoload ~/.vim/bundle
    curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

    pushd ~/.vim/bundle
        git clone https://github.com/nanotech/jellybeans.vim.git
        git clone https://github.com/scrooloose/nerdtree.git
    popd
