import { Component, inject } from '@angular/core';
import { RouterModule } from '@angular/router';
import { HeaderComponent } from '../../components/header/header.component';
import { FormsModule } from '@angular/forms';
import { AuthService } from '../../shared/auth.service';

@Component({
  selector: 'app-sign-up',
  standalone: true,
  imports: [RouterModule, FormsModule, HeaderComponent],
  templateUrl: './sign-up.component.html',
  styleUrl: './sign-up.component.css'
})
export class SignUpComponent {
  private authService = inject(AuthService)

  user = {
    email :"",
    password : "",
  }

  onSubmit() {
    this.authService.inscrire(this.user.email, this.user.password)
    this.user.email = ""
    this.user.password = ""
  }

}
