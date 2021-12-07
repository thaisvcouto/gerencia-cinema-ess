import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { environment } from 'src/environments/environment';
import { User } from '../models/user';

@Injectable({
  providedIn: 'root'
})
export class userService {

  constructor(private http: HttpClient) { }

  getUsers(): Observable<User[]> {
    return this.http.get<User[]>(`${environment.url}/user`);
  }

  createUser(name: string, age: number, email: string): Observable<any> {
    const user = new User(0, name, age, email);
    return this.http.post<any>(`${environment.url}/user`, user);
  }
}
