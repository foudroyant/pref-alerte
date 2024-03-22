import { Component } from '@angular/core';
import { HeaderComponent } from '../../components/header/header.component';
import { PricingComponent } from '../../components/pricing/pricing.component';

@Component({
  selector: 'app-compte',
  standalone: true,
  imports: [HeaderComponent, PricingComponent],
  templateUrl: './compte.component.html',
  styleUrl: './compte.component.css'
})
export class CompteComponent {

}
