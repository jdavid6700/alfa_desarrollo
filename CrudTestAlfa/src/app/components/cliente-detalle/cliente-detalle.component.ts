import { Component, OnInit } from '@angular/core';
import { Cliente } from 'src/app/models/cliente.model';
import { ActivatedRoute, Router } from '@angular/router';
import { ClienteService } from 'src/app/services/cliente.service';
import { CiudadService } from 'src/app/services/ciudad.service';

@Component({
  selector: 'app-cliente-detalle',
  templateUrl: './cliente-detalle.component.html',
  styleUrls: ['./cliente-detalle.component.css']
})
export class ClienteDetalleComponent implements OnInit {
	
  currentCliente: Cliente = {
    nombre: '',
    telefono: -1,
    ciudad: -1
  };
  currentCiudad: Ciudad = {
    nombre: ''
  };
  message = 'El Cliente fue actualizado correctamente!';

  constructor(private clienteService: ClienteService, private ciudadService: CiudadService,
    private route: ActivatedRoute,
    private router: Router) { }

  ngOnInit(): void {
  	this.message = '';
    this.getCliente(this.route.snapshot.params.id);
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

  getCliente(id: string): void {
    this.clienteService.get(id)
      .subscribe(
        data => {
          this.currentCliente = data.data;
          this.getCiudad(this.currentCliente.ciudad);
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

  updateCliente(): void {
    this.clienteService.update(this.currentCliente.id, this.currentCliente)
      .subscribe(
        response => {
          console.log(response);
          this.message = response.message;
          this.submitted = true;
        },
        error => {
          console.log(error);
        });
  }

  deleteCliente(): void {
    this.clienteService.delete(this.currentCliente.id)
      .subscribe(
        response => {
          console.log(response);
          this.router.navigate(['/clientes']);
        },
        error => {
          console.log(error);
        });
  }

  backCliente(): void{
    this.submitted = false;
  }

}
