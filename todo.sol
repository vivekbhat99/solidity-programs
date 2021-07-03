// SPDX-License-Identifier: MIT
pragma solidity 0.8.6;

contract todo{
    
    struct Todo {
        string text;
        bool iscompleted;
    }
    
    Todo[] public todos;
    
    function update(string memory _text) public {
        todos.push(Todo({ // or todos.push(Todo(_text, false));
            text: _text,
            iscompleted: false
        }));
        
    }
    
    function get(uint8 num) public view returns (string memory text, bool iscompleted){
        Todo storage todo = todos[num];
        return (todo.text, todo.iscompleted); 
    }
    
    function toggle(uint8 num) public {
        Todo storage todo = todos[num];
        todo.iscompleted = !todo.iscompleted;
    }
}
