import { Component, inject } from '@angular/core';
import { HeaderComponent } from '../../components/header/header.component';
import { PricingComponent } from '../../components/pricing/pricing.component';
import { FormsModule } from '@angular/forms';
import { AuthService } from '../../shared/auth.service';

@Component({
  selector: 'app-compte',
  standalone: true,
  imports: [HeaderComponent, PricingComponent, FormsModule],
  templateUrl: './compte.component.html',
  styleUrl: './compte.component.css'
})
export class CompteComponent {
  service = inject(AuthService)
  data = {
    phone : "",
    credits : 0
  }

  ngOnInit(){
    this.service.getUserData().then(res=>{
      this.data.phone = res.phone
      this.data.credits = res.credits
    })
  }
  
  onSubmit() {
    this.service.updatePhone(this.data.phone)
  }

}
