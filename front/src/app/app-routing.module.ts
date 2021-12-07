import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { TelaAreaFuncionarioComponent } from './tela-area-funcionario/tela-area-funcionario.component';
import { TelaCadastroComponent } from './tela-cadastro/tela-cadastro.component';
import { TelaFilmesComponent } from './tela-filmes/tela-filmes.component';
import { TelaLoginComponent } from './tela-login/tela-login.component';
import { TelaCadastroFilmeComponent } from './tela-cadastro-filme/tela-cadastro-filme.component';


const routes: Routes = [
  {
    component: TelaFilmesComponent,
    path: ''
  },
  {
    component: TelaCadastroComponent,
    path: 'cadastro'
  },
  {
    component: TelaLoginComponent,
    path: 'login'
  },
  {
    component: TelaAreaFuncionarioComponent,
    path: 'areaFuncionario'
  },
  {
    component: TelaCadastroFilmeComponent,
    path: 'cadastroFilme'
  }

];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
