#provide both anchored and unachored commands via 'over'
say <user.text>$:
    user.add_phrase_to_history(text)
    insert(text)
say <user.text> over:
    user.add_phrase_to_history(text)
    insert(text)
{user.prose_formatter} <user.prose>$: user.insert_formatted(prose, prose_formatter)
{user.prose_formatter} <user.prose> over: user.insert_formatted(prose, prose_formatter)
<user.format_text>+$: user.insert_many(format_text_list)
<user.format_text>+ over: user.insert_many(format_text_list)
<user.formatters> that: user.formatters_reformat_selection(user.formatters)
word <user.word>:
    user.add_phrase_to_history(word)
    insert(word)
recent list: user.toggle_phrase_history()
recent close: user.phrase_history_hide()
recent repeat <number_small>:
    recent_phrase = user.get_recent_phrase(number_small)
    user.add_phrase_to_history(recent_phrase)
    insert(recent_phrase)
recent copy <number_small>: clip.set_text(user.get_recent_phrase(number_small))
select that: user.select_last_phrase()
before that: user.before_last_phrase()
nope that | scratch that: user.clear_last_phrase()
nope that was <user.formatters>: user.formatters_reformat_last(formatters)

# shit that doesn't work
word today: 
    insert("today")

word followup date: 
    insert("followupDate")

word oopsy: 
    insert("error")
    
word a line:
    insert("align")

# assign
(go assign| assign | gosign): 
    insert(" = ")

(go return| goturn): 
    insert("return ")
 
dot <user.word>:
    user.add_phrase_to_history(word)
    insert(".")
    insert(word)

slash <user.word>:
    user.add_phrase_to_history(word)
    insert("/")
    insert(word)
    

dash <user.word>:
    user.add_phrase_to_history(word)
    insert("-")
    insert(word)

    
make fake email:
    insert(user.random_email())