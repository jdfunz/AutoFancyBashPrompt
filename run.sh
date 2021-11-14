echo "[FancyPrompt] Downloading prompt files..."
curl -sSL https://raw.githubusercontent.com/pjmp/fancy-linux-prompt/master/fancy-prompt.sh -o $HOME/.fp.sh
echo "[FancyPrompt] Download complete!"
sleep 0.1
echo "[FancyPrompt] Applying to .bashrc"
echo "source $HOME/.fp.sh" >> $HOME/.bashrc

function neofetch {
    echo "[FancyPrompt] Applying neofetch"
    curl -sSL https://raw.githubusercontent.com/dylanaraps/neofetch/master/neofetch -o $HOME/.neofetch.sh
    echo "bash $HOME/.neofetch.sh" >> $HOME/.bashrc
    echo "[FancyPrompt] complete."
}
read -p "Install neofetch? (y/n)?" choice
case "$choice" in 
  y|Y ) echo "yes";;
  n|N ) echo "[FancyPrompt] complete.";;
  * ) echo "invalid";;
esac
