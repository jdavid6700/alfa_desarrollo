import { Component, OnInit } from '@angular/core';
import { Cliente } from 'src/app/models/cliente.model';
import { ClienteService } from 'src/app/services/cliente.service';
import { CiudadService } from 'src/app/services/ciudad.service';

@Component({
  selector: 'app-clientes-list',
  templateUrl: './clientes-list.component.html',
  styleUrls: ['./clientes-list.component.css']
})
export class ClientesListComponent implements OnInit {

	clientes?: Cliente[];
    currentCliente?: Cliente;
    currentCiudad?: Ciudad;
    currentIndex = -1;
    nombre = '';

  constructor(private clienteService: ClienteService, private ciudadService: CiudadService) { }

  ngOnInit(): void {
  	this.retrieveClientes();
  }

  retrieveClientes(): void {
    this.clienteService.getAll()
      .subscribe(
        data => {
          this.clientes = data.data;
          console.log(data.data);
        },
        error => {
          console.log(error);
        });
  }

  getCiudad(id: string): void {
    this.ciudadService.get(id)
      .subscribe(
        data => {
          this.currentCiudad = data.data;
          console.log(data.data);
        },
        error => {
          console.log(error);
        });
  }

  refreshList(): void {
    this.retrieveClientes();
    this.currentCliente = undefined;
    this.currentCiudad = undefined;
    this.currentIndex = -1;
  }

  setActiveCliente(cliente: Cliente, index: number): void {
    this.currentCliente = cliente;
    this.currentIndex = index;
    this.getCiudad(this.currentCliente.ciudad);
  }

  setActiveCiudad(ciudad: Ciudad, index: number): void {
    this.currentCiudad = ciudad;
    this.currentIndex = index;
  }

  removeAllClientes(): void {
    this.clienteService.deleteAll()
      .subscribe(
        response => {
          console.log(response);
          this.refreshList();
        },
        error => {
          console.log(error);
        });
  }

}
