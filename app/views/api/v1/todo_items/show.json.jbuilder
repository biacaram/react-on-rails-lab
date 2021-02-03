# json.partial! will render the _todo_item.json.jbuilder partial, and takes @todo_item as an argument. 
# The @todo_item is handled through our private set_todo_item method in our controller.
json.partial! "api/v1/todo_items/todo_item", todo_item: @todo_item