package pl.kfryc.service;

import lombok.Getter;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import pl.kfryc.model.TodoData;
import pl.kfryc.model.TodoItem;

@Slf4j
@Service
public class TodoItemServiceImpl implements TodoItemService{

    // == fields ==
    @Getter
    private final TodoData data = new TodoData();

    // == public methods ==

    @Override
    public void addItem(TodoItem todoItem) {
        data.addItem(todoItem);
    }

    @Override
    public void removeItem(int id) {
        data.removeItem(id);
    }

    @Override
    public TodoItem getItem(int id) {
        return data.getItem(id);
    }

    @Override
    public void updateItem(TodoItem todoItem) {
        data.updateItem(todoItem);
    }

}
