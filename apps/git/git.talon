tag: terminal
and tag: user.git
-
jet {user.git_command} [<user.prose>]:
    args = git_arguments or ""
    message = prose or ""
    "git {git_command} {message} "

jet checkout branch [<user.prose>]:
    args = git_arguments or ""
    message = prose or ""
    "git checkout -B {message} "
    
jet commit [<user.git_arguments>] message [<user.prose>]:
    args = git_arguments or ""
    message = prose or ""
    user.insert_between("git commit{args} --message '{message}", "'")
jet stash [push] [<user.git_arguments>] message [<user.prose>]:
    args = git_arguments or ""
    message = prose or ""
    user.insert_between("git stash push{args} --message '{message}", "'")

# Optimistic execution for frequently used commands that are harmless (don't
# change repository or index state).
jet status$: "git status\n"
jet add patch$: "git add --patch\n"
jet show head$: "git show HEAD\n"
jet diff$: "git diff\n"
jet diff (cached | cashed)$: "git diff --cached\n"

# # Convenience
# git clone clipboard:
#     insert("git clone ")
#     edit.paste()
#     key(enter)
# git diff highlighted:
#     edit.copy()
#     insert("git diff ")
#     edit.paste()
#     key(enter)
# git diff clipboard:
#     insert("git diff ")
#     edit.paste()
#     key(enter)
# git add highlighted:
#     edit.copy()
#     insert("git add ")
#     edit.paste()
#     key(enter)
# git add clipboard:
#     insert("git add ")
#     edit.paste()
#     key(enter)
# git commit highlighted:
#     edit.copy()
#     insert("git add ")
#     edit.paste()
#     insert("\ngit commit\n")
