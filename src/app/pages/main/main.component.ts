import { Component } from '@angular/core';
import { PricingComponent } from '../../components/pricing/pricing.component';
import { RouterModule } from '@angular/router';
import { HeaderComponent } from '../../components/header/header.component';

@Component({
  selector: 'app-main',
  standalone: true,
  imports: [PricingComponent, HeaderComponent, RouterModule],
  templateUrl: './main.component.html',
  styleUrl: './main.component.css'
})
export class MainComponent {

}
