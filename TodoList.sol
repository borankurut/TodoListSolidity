// SPDX-License-Identifier: MIT

pragma solidity 0.8.7;

contract TodoList{
    struct Todo{
        string text;
        bool completed;
    }

    Todo[] public todos;

    function create(string calldata _text) external{
        todos.push(Todo({text: _text, completed: false}));
    }

    function updateTask(string calldata _text, uint _i) external{
        todos[_i].text = _text;
    }

    function get(uint _i) view external returns(string memory, bool){
        Todo storage todo = todos[_i];
        return (todo.text, todo.completed);
    }

    function toggleCompleted(uint _i) external{
        todos[_i].completed = !todos[_i].completed;
    }
}
