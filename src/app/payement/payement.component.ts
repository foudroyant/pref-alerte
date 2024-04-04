import { Component, Input, inject } from '@angular/core';
import { HeaderComponent } from '../components/header/header.component';
import { HttpClient, HttpClientModule, } from '@angular/common/http';
import { AuthService } from '../shared/auth.service';
import { Router } from 'express';

@Component({
  selector: 'app-payement',
  standalone: true,
  imports: [HeaderComponent, HttpClientModule],
  templateUrl: './payement.component.html',
  styleUrl: './payement.component.css'
})
export class PayementComponent {

  http = inject(HttpClient)
  authservice = inject(AuthService)
  router = inject(Router)

  @Input() session : string | undefined
  @Input() plan : string | undefined
  
  ngOnInit(){
    console.log(this.session)
    /*this.http.post(`http://localhost:3000/pref-alerte/success`, 
    {
      session : this.session,
      user : this.authservice.user?.uid,
      plan : this.plan
    })
    .subscribe((res : any)=>{
      if(res["type"] == "SUCCESS") {
        this.router.navigate(["/home"])
      }
    })*/
  }
}
