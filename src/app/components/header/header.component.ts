import { Component, inject } from '@angular/core';
import { RouterModule } from '@angular/router';
import { AuthService } from '../../shared/auth.service';
import { AuthDirective } from '../../shared/auth.directive';

@Component({
  selector: 'app-header',
  standalone: true,
  imports: [RouterModule, AuthDirective],
  templateUrl: './header.component.html',
  styleUrl: './header.component.css'
})
export class HeaderComponent {
  logout() {
    this.authService.logout()
  }

  private authService = inject(AuthService)
}
