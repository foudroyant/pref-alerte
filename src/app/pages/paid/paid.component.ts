import { Component, Input, inject } from '@angular/core';
import { AuthService } from '../../shared/auth.service';
import { Router, RouterModule } from '@angular/router';
import { HttpClient, HttpClientModule } from '@angular/common/http';
import { HeaderComponent } from '../../components/header/header.component';

@Component({
  selector: 'app-paid',
  standalone: true,
  imports: [HttpClientModule, HeaderComponent, RouterModule],
  templateUrl: './paid.component.html',
  styleUrl: './paid.component.css'
})
export class PaidComponent {

  http = inject(HttpClient)
  authservice = inject(AuthService)
  router = inject(Router)

  @Input() session : string | undefined
  @Input() plan : string | undefined
  @Input() user : string | undefined

  rendreVisible = false
  credits = 0
  
  ngOnInit(){
    //console.log(this.session, this.authservice.user?.uid, this.plan)
    if(this.session == undefined || this.plan == undefined || this.user == undefined ){
      alert("Impossible d'effecturer l'opération")
      return
    }
    this.http.post(`http://localhost:3000/pref-alerte/success`, 
    {
      session : this.session,
      user : this.user,
      plan : this.plan
    })
    .subscribe((res : any)=>{
      console.log(res)
      if(res["type"] == "SUCCESS") {
        this.rendreVisible = true
        this.credits = res["credits"]
      }
    })
  }

  go_home(){
    this.authservice.check_user_connection()
  }
}
