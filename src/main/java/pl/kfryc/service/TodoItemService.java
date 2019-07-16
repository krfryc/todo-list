package pl.kfryc.service;

import pl.kfryc.model.TodoData;
import pl.kfryc.model.TodoItem;

public interface TodoItemService {
    void addItem(TodoItem todoItem);
    void removeItem(int id);
    TodoItem getItem(int id);
    void updateItem(TodoItem todoItem);
    TodoData getData();

}
