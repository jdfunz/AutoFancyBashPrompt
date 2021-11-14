echo "[FancyPrompt] Downloading prompt files..."
curl -sSL https://raw.githubusercontent.com/pjmp/fancy-linux-prompt/master/fancy-prompt.sh -o $HOME/.fp.sh
echo "[FancyPrompt] Download complete!"
sleep 0.1
echo "[FancyPrompt] Applying to .bashrc"
echo "\nsource $HOME/.fp.sh" >> $HOME/.bashrc
PS3='[FancyPrompt] Would you like to apply neofetch to your prompt?'
options=("y" "n")
select opt in "${options[@]}"
do
    case $opt in
        "y")
            echo "[FancyPrompt] Applying neofetch"
            curl -sSL https://raw.githubusercontent.com/dylanaraps/neofetch/master/neofetch -o $HOME/.neofetch.sh
            echo "\nbash $HOME/.neofetch.sh" >> $HOME/.bashrc
            ;;
        "n")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
echo "[FancyPrompt] complete."
