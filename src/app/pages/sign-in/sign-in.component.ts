import { Component, inject } from '@angular/core';
import { Router, RouterModule } from '@angular/router';
import { HeaderComponent } from '../../components/header/header.component';
import { FormsModule } from '@angular/forms';
import { AuthService } from '../../shared/auth.service';

@Component({
  selector: 'app-sign-in',
  standalone: true,
  imports: [RouterModule, FormsModule, HeaderComponent],
  templateUrl: './sign-in.component.html',
  styleUrl: './sign-in.component.css'
})
export class SignInComponent {
  private authService = inject(AuthService)
  private router = inject(Router)
  user = {
    email :"",
    password : ""
  }

  ngOnInit(){
    
  }

  onSubmit() {
    this.authService.connecter(this.user.email, this.user.password)
    this.user.email = ""
    this.user.password = ""
  }

}
