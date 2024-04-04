import { Component, inject } from '@angular/core';
import { Router, RouterModule } from '@angular/router';
import { HeaderComponent } from '../../components/header/header.component';
import { NgFor } from '@angular/common';
import { AuthService } from '../../shared/auth.service';
import { ModelPrefecture } from '../../shared/model';

@Component({
  selector: 'app-home',
  standalone: true,
  imports: [RouterModule, NgFor, HeaderComponent],
  templateUrl: './home.component.html',
  styleUrl: './home.component.css'
})
export class HomeComponent {

  service = inject(AuthService)
  private router = inject(Router)
  
  prefectures : ModelPrefecture[] = []
  credits : number = 0

  async ngOnInit(){
    this.prefectures = await this.service.getPrefectures()
    this.credits = (await this.service.getUserData()).credits
  }

  go_to_motifs(index : number){
    localStorage.setItem("index", index.toString())
    this.router.navigate(["/prefecture"])
  }

}
