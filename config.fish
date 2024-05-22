# Overrides the fish prompt
# Unlike bash shell, to display your prompt, fish executes a function with the name fish_prompt,
# and its output is used as the prompt. So in order to add custom text to the prompt,
# we need to override this method (fish_prompt) in fish config file (for me, it is .config/fish/config.fish)
# Here is the simple implementation of fish_promt that shows current git branch name in the prompt.


function fish_prompt
      set_color purple
      date
      set_color green
      echo (pwd)
      set_color red
      echo (git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/')
      set_color cyan
      echo '----------------- END'
      echo -n '$'
      set_color normal
end
