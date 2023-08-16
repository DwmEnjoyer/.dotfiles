if status is-interactive
	##FUNCTIONS
	function ls
		exa --icons $argv
	end
	##VARIABLES
	set fish_greeting
	set -x EDITOR "nvim"
	set -x VISUAL "nvim"
	##STARTUP COMMANDS
	fm6000 -n -c cyan -f ~/.config/pixelart/space_invader.txt
	##INIT STARSHIP PROMPT
	starship init fish | source
	##PATH
	fish_add_path /home/alc111/.cargo/bin
	fish_add_path /home/alc111/.deno/bin
end
