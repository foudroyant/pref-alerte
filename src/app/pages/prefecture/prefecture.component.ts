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

  phone_number : string = ""
  links : string[] = []
  credits : number = 0

  service = inject(AuthService)
  private router = inject(Router)
  prefecture : ModelPrefecture | undefined
  index : number |undefined

  ngOnInit(){
    this.index = Number.parseInt(localStorage.getItem("index")!)
    this.prefecture = this.service.prefectures[this.index]
    this.service.getUserData().then(res=>{
      this.links = res.links
      this.credits = res.credits
      this.phone_number = res.phone
      console.log(this.links)
    })
  }

  getNotifs(motif : ModelMotif){
    if(this.credits <1 ){
      alert("Vous n'avez pas de crédits pour vous abonner")
    }
    else {
      this.service.subscribe_motif(motif)
    }
    
  }

  removeNotifs(motif : ModelMotif){
    this.service.desubscribe_motif(motif)
    this.prefecture = this.service.prefectures[this.index!]
  }
}
