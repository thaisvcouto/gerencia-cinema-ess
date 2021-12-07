import { Component, OnInit } from '@angular/core';
import { userService } from '../services/user.service';

@Component({
  selector: 'app-tela-cadastro',
  templateUrl: './tela-cadastro.component.html',
  styleUrls: ['./tela-cadastro.component.css']
})
export class TelaCadastroComponent implements OnInit {

  name: string = "";
  age: number = 0;
  email: string = "";

  constructor(private userService: userService) { }

  ngOnInit(): void {

    this.name = "";
    this.age = 0;
    this.email = "";
  }

  createUser() {
    this.userService.createUser(this.name, this.age, this.email).subscribe({
      next: (message) => {
        this.name = "";
        this.email = "";
        this.age = 0;
        alert(message.message);
      },
      error: (err) => {
        alert(err.error.error);
      }
    })
  }
  
  getUsers() {
    this.userService.getUsers().subscribe({
      next: (users) => {
        console.log(users);
      },
      error: () => {
        alert("Não foi possível obter os usuários do servidor");
      }
    })
  }
}