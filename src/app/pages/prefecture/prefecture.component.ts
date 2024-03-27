import { Component, inject } from '@angular/core';
import { HeaderComponent } from '../../components/header/header.component';
import { Router, RouterModule } from '@angular/router';
import { AuthService } from '../../shared/auth.service';
import { ModelMotif, ModelPrefecture } from '../../shared/model';

@Component({
  selector: 'app-prefecture',
  standalone: true,
  imports: [HeaderComponent, RouterModule],
  templateUrl: './prefecture.component.html',
  styleUrl: './prefecture.component.css'
})
export class PrefectureComponent {

  service = inject(AuthService)
  private router = inject(Router)
  prefecture : ModelPrefecture | undefined

  ngOnInit(){
    const index = Number.parseInt(localStorage.getItem("index")!)
    this.prefecture = this.service.prefectures[index]
  }
}
