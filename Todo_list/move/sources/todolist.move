module 0xab24ae7071394aab5d769f7674c31e88575f7e7cbd541310efcd084d0b7f38dd::todolist{
    use std::string::String;
    use aptos_std::table::{Self,Table};

    struct Todolist has key{
        tasks: Table<u64,String>,
        task_counter:u64
    }
    
    public entry fun create_list(account: &signer){
        let todo_list= TodoList{
            tasks:table::new(),
            task_counter:0
        };
        move_to(account,todo_list);
    }
}