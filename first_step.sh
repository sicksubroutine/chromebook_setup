sudo apt update && sudo apt upgrade -y
sudo install git wget curl zsh gcc g++ make -y
CI=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" # Install Homebrew
brew install nvim fzf zoxide poetry pyenv pipx
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" # Install Oh My Zsh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting # Install zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions # Install zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions # Install zsh-completions
git clone https://github.com/Aloxaf/fzf-tab ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/fzf-tab # Install fzf-tab
echo "Add fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src to your .zshrc"
echo "Don't forget to add zsh-syntax-highlighting zsh-autosuggestions fzf-tab to your plugins in .zshrc"
sleep 5
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k # Install Powerlevel10k
p10k configure # Configure Powerlevel10k
git clone --depth 1 https://github.com/AstroNvim/template ~/.config/nvim # Clone AstroNvim template
rm -rf ~/.config/nvim/.git # Remove AstroNvim git folder
nvim 