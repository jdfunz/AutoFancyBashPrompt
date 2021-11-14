echo "[FancyPrompt] Downloading prompt files..."
curl -sSL https://raw.githubusercontent.com/pjmp/fancy-linux-prompt/master/fancy-prompt.sh -o $HOME/.fp.sh
echo "[FancyPrompt] Download complete!"
sleep 0.1
echo "[FancyPrompt] Applying to .bashrc"
echo "source $HOME/.fp.sh" >> $HOME/.bashrc

read -p "Continue (y/n)?" CONT
if [ "$CONT" = "y" ]; then
  echo "[FancyPrompt] Applying neofetch"
  curl -sSL https://raw.githubusercontent.com/dylanaraps/neofetch/master/neofetch -o $HOME/.neofetch.sh
  echo "bash $HOME/.neofetch.sh" >> $HOME/.bashrc
  echo "[FancyPrompt] complete."
else
  echo "[FancyPrompt] complete."
fi
