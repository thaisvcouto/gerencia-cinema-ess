import { User } from "../models/user";

export class UserController {

    users: User[];
    count: number;

    constructor () {
        this.users = [];
        this.count = 0;
    }

    getUsers() : User[] {
        return this.users;
    }

    getUsersById(id: number) : User {
        const user = this.users.find(u => u.id == id);
        return user;
    }

    deleteUser(id: number): boolean {
        let userIndex = this.users.findIndex(u => u.id == id);
        
        if (userIndex == -1) {//retorna -1 se não encontrar ninguém
            return false;
        }
        
        this.users.splice(userIndex, 1);
        return true;
    }

    updateUser(id: number, name: string, age: number): boolean {
        let userIndex = this.users.findIndex(u => u.id == id);
        
        if (userIndex == -1) {//retorna -1 se não encontrar ninguém
            return false;
        }

        this.users[userIndex].age = age;
        this.users[userIndex].name = name;
        return true;

    }

    createUser(name: string, age: number, email: string): boolean {
        if (this.users.find(u => u.email == email)) {
            return false;
        }
        const newUser = new User(this.count, name, age, email);
        this.users.push(newUser);
        this.count++;
        return true;
    }
}