# tag: user.javascript
# -
# tag(): user.code_imperative
# tag(): user.code_object_oriented

# tag(): user.code_comment_line
# tag(): user.code_comment_block_c_like
# tag(): user.code_data_bool
# tag(): user.code_data_null
# tag(): user.code_functions
# tag(): user.code_functions_common
# tag(): user.code_keywords
# tag(): user.code_libraries
# tag(): user.code_operators_array
# tag(): user.code_operators_assignment
# tag(): user.code_operators_bitwise
# tag(): user.code_operators_lambda
# tag(): user.code_operators_math

# settings():
#     user.code_private_function_formatter = "PRIVATE_CAMEL_CASE"
#     user.code_protected_function_formatter = "PRIVATE_CAMEL_CASE"
#     user.code_public_function_formatter = "PRIVATE_CAMEL_CASE"
#     user.code_private_variable_formatter = "PRIVATE_CAMEL_CASE"
#     user.code_protected_variable_formatter = "PRIVATE_CAMEL_CASE"
#     user.code_public_variable_formatter = "PRIVATE_CAMEL_CASE"

# (op | is) strict equal: " === "
# (op | is) strict not equal: " !== "
# op null else: " ?? "

java const: "const "
java tripsign: " === "
(java arrow | java air): " => "

java let: "let "

# java var: "var "

java export: "export "

java async: "async "

java await: "await "

# dot {user.code_common_member_function}:
#     user.insert_between(".{code_common_member_function}(", ")")

# java map: app.notify('ERROR: Command deprecated; please use "dot map"')
# java filter: app.notify('ERROR: Command deprecated; please use "dot filter"')
# java reduce: app.notify('ERROR: Command deprecated; please use "dot reduce"')

java spread: "..."

from import: user.insert_between(' from  "', '"')

java yarn [<user.text>]: 
  insert("yarn ")
  insert(user.text)

java print [<user.text>]: 
  insert("console.log(")
  insert(user.text)
  insert(")")

