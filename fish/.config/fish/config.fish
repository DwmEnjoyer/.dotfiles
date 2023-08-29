if status is-interactive
	##FUNCTIONS
	function ls
		exa --icons $argv
	end
	function ssh
		TERM=xterm-256color /usr/bin/ssh $argv
	end
	function vim
		nvim $argv
	end
	##VARIABLES
	set fish_greeting
	set -x EDITOR "nvim"
	set -x VISUAL "nvim"
	set -x STARSHIP_CONFIG ~/.config/starship/starship.toml
	##STARTUP COMMANDS
	#fm6000 -n -c cyan -f ~/.config/pixelart/space_invader.txt
	#pfetch
	flowetch
	##INIT STARSHIP PROMPT
	starship init fish | source
	##PATH
	fish_add_path /home/alc111/.cargo/bin
	fish_add_path /home/alc111/.deno/bin
	fish_add_path /home/alc111/go/bin
end
