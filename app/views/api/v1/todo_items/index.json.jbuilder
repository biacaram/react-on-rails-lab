# json.array! will take a list of queried TodoItems and pass each TodoItem into the _todo_item.json.jbuilder partial. 
# We still need to add @todo_items into our controller index action.
json.array! @todo_items, partial: "api/v1/todo_items/todo_item", as: :todo_item