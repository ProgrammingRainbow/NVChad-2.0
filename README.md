My NVChad Custom directory. This was created mostly from watching Dreams of Code videos. https://www.youtube.com/playlist?list=PL05iK6gnYad1sb4iQyqsim_Jc_peZdNXf

NVChad did update causing breaking changes so i am using version 2.0 of NVChad. Haskell is currently not working correctly. I have also set this up for 4 spacing tabs. This seems to work on all languages except for Ruby. Each ruby file you open will need `:set shiftwidth=4`. I do not have a list of packages that need to be installed on your system to make full use of all the LSPs and formatters.

Backup current nvim config in your home director named nvim-backup with a random number:
```
cp -r ~/.config/nvim ~/nvim-backup$$
```

Remove current nvim config:
```
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
```

Clone NVChad version 2.0:
```
git clone -b v2.0 https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
```

Before starting nvim clone my Custom Directory into ~/.config/nvim/lua/custom
```
git clone https://github.com/ProgrammingRainbow/NVChad-2.0 ~/.config/nvim/lua/custom --depth 1
```
