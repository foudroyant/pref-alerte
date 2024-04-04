import { HttpClient, HttpClientModule, } from '@angular/common/http';
import { Component, inject } from '@angular/core';
import { AuthService } from '../../shared/auth.service';

@Component({
  selector: 'app-pricing',
  standalone: true,
  imports: [HttpClientModule],
  templateUrl: './pricing.component.html',
  styleUrl: './pricing.component.css'
})
export class PricingComponent {

  http = inject(HttpClient)
  auth = inject(AuthService)

  buy_credits(plan : number){
    if(this.auth.user?.uid != undefined){
      this.http.post("http://localhost:3000/pref-alerte/create-checkout-session", {
        plan : plan,
        user : this.auth.user?.uid
      })
      .subscribe((res : any)=>{
        console.log(res)
        window.location.href = res["url"]
      })
    }
    else {
      alert("Veuillez-vous reconnecter")
    }
    
  }
  
}
