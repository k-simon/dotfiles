invoke-elevated{
  new-junction ~\.vim ..\.vim\
  new-junction ~\Documents\WindowsPowerShell\ .

  new-symlink ~\.vimrc ..\.vimrc
  new-symlink ~\.gitconfig ..\.gitconfig
  new-symlink ~\.gitignore ..\.gitignore
}
