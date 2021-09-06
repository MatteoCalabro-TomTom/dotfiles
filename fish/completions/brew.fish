set -l brew_prefix (brew --prefix)
if test -d "$brew_prefix/share/fish/completions"
    set -gx fish_complete_path $fish_complete_path $brew_prefix/share/fish/completions
end

if test -d "$brew_prefix/share/fish/vendor_completions.d"
    set -gx fish_complete_path $fish_complete_path $brew_prefix/share/fish/vendor_completions.d
end
