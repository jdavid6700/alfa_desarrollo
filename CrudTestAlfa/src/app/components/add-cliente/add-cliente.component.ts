import { Component, OnInit } from '@angular/core';
import { Cliente } from 'src/app/models/cliente.model';
import { ClienteService } from 'src/app/services/cliente.service';
import { CiudadService } from 'src/app/services/ciudad.service';

@Component({
  selector: 'app-add-cliente',
  templateUrl: './add-cliente.component.html',
  styleUrls: ['./add-cliente.component.css']
})
export class AddClienteComponent implements OnInit {cliente: Cliente = {
    nombre: '',
    telefono: -1,
    ciudad: -1
  };
  submitted = false;


  constructor(private clienteService: ClienteService, private ciudadService: CiudadService) { }

  ngOnInit(): void {
    this.retrieveCiudades();
  }

  retrieveCiudades(): void {
    this.ciudadService.getAll()
      .subscribe(
        data => {
          this.ciudades = data.data;
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

  saveCliente(): void {
    const data = {
      nombre: this.cliente.nombre,
      telefono: this.cliente.telefono,
      ciudad: this.cliente.ciudad
    };

    this.clienteService.create(data)
      .subscribe(
        response => {
          console.log(response);
          this.submitted = true;
        },
        error => {
          console.log(error);
        });
  }

  newCliente(): void {
    this.submitted = false;
    this.cliente = {
      nombre: '',
      telefono: -1,
      ciudad: -1
    };
  }

}
