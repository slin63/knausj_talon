# find it: edit.find()

# next one: edit.find_next()

fam: edit.word_left()

fish: edit.word_right()

# go left: edit.left()

# go right: edit.right()

# go up: edit.up()

# go down: edit.down()

lefty: edit.line_start()

ricky: edit.line_end()

# go way left:
#     edit.line_start()
#     edit.line_start()

# go way right: edit.line_end()

return: 
    edit.line_end()
    key(enter)

go way down: edit.file_end()

go way up: edit.file_start()

go bottom: edit.file_end()

go top: edit.file_start()

go page down: edit.page_down()

go page up: edit.page_up()

# selecting
select line: edit.select_line()

select all: key(cmd-a)

select left: edit.extend_left()

select right: edit.extend_right()

# select up: edit.extend_line_up()

# select down: edit.extend_line_down()

# select word: edit.select_word()

scram: edit.extend_word_left()

scrish: edit.extend_word_right()

select line left: edit.extend_line_start()

select line right: edit.extend_line_end()

# select way up: edit.extend_file_start()

# select way down: edit.extend_file_end()

# editing
# indent [more]: edit.indent_more()

# (indent less | out dent): edit.indent_less()

# # deleting
day line: 
    key(cmd-l)
    key(backspace)

day [<number_small>]: 
    key(backspace)
    repeat(number_small-1)

scrap [<number_small>]: 
    key(delete)
    repeat(number_small-1)

# clear right: key(delete)

# clear up:
#     edit.extend_line_up()
#     edit.delete()

# clear down:
#     edit.extend_line_down()
#     edit.delete()

# clear word: edit.delete_word()

famey:
    edit.extend_word_left()
    edit.delete()

fishy:
    edit.extend_word_right()
    edit.delete()

snip left:
    edit.extend_line_start()
    edit.delete()

snip right:
    edit.extend_line_end()
    edit.delete()

# clear way up:
#     edit.extend_file_start()
#     edit.delete()

# clear way down:
#     edit.extend_file_end()
#     edit.delete()

# clear all:
#     edit.select_all()
#     edit.delete()

#copy commands
(stish | stash): 
    key(cmd-c)

spark:
    edit.paste()

    #  doesn't work for some reason
# stishy: 
#     edit.maccy()

copy all:
    edit.select_all()
    edit.copy()
#to do: do we want these variants, seem to conflict
# copy left:
#      edit.extend_left()
#      edit.copy()
# copy right:
#     edit.extend_right()
#     edit.copy()
# copy up:
#     edit.extend_up()
#     edit.copy()
# copy down:
#     edit.extend_down()
#     edit.copy()

# copy word:
#     edit.select_word()
#     edit.copy()

# scram: user.copy_word_left()

# stark: user.copy_word_right()

copy line:
    edit.select_line()
    edit.copy()

#cut commands
snatch:
    edit.cut()
#to do: do we want these variants
# cut left:
#      edit.select_all()
#      edit.cut()
# cut right:
#      edit.select_all()
#      edit.cut()
# cut up:
#      edit.select_all()
#     edit.cut()
# cut down:
#     edit.select_all()
#     edit.cut()

# cut word:
#     edit.select_word()
#     edit.cut()

# cut word left: user.cut_word_left()

# cut word right: user.cut_word_right()

# cut line: user.cut_line()

(pace | paste) all:
    edit.select_all()
    edit.paste()

# # duplication
# clone that: edit.selection_clone()
# clone line: edit.line_clone()

sageit: 
    key(cmd-s)


(uppercase | capitalize) (that | this):
    text = edit.selected_text()
    user.insert_formatted(text, "ALL_CAPS")

lower (that | this):
    text = edit.selected_text()
    user.insert_formatted(text, "ALL_LOWERCASE")

title (that | this):
    text = edit.selected_text()
    user.insert_formatted(text, "CAPITALIZE_ALL_WORDS")
