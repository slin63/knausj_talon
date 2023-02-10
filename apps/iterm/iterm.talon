os: mac
app: iterm2
-
tag(): terminal
# todo: filemanager support
#tag(): user.file_manager
tag(): user.generic_unix_shell
tag(): user.git
tag(): user.kubectl
tag(): user.tabs
tag(): user.readline

reverse:
  key(ctrl-r)

merge:
  insert("smerge .")
  key(enter)

change up:
  insert("cd ..")
  key(enter)

change back:
  insert("cd -")
  key(enter)

change: 
  insert("cd ")

gottem:
  key(right)
  key(enter)

she kill:
  key(ctrl-c)

she again:
  key(up)
  key(enter)

    
go again:
  key(up)
  key(enter)

make [<user.text>]:
  insert("make " + user.text)