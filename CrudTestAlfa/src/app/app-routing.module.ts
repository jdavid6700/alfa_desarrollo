import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { ClientesListComponent } from './components/clientes-list/clientes-list.component';
import { ClienteDetalleComponent } from './components/cliente-detalle/cliente-detalle.component';
import { AddClienteComponent } from './components/add-cliente/add-cliente.component';


const routes: Routes = [
  { path: '', redirectTo: 'clientes', pathMatch: 'full' },
  { path: 'clientes', component: ClientesListComponent },
  { path: 'clientes/:id', component: ClienteDetalleComponent },
  { path: 'add', component: AddClienteComponent }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
