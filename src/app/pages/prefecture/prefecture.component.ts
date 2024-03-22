import { Component } from '@angular/core';
import { HeaderComponent } from '../../components/header/header.component';
import { RouterModule } from '@angular/router';

@Component({
  selector: 'app-prefecture',
  standalone: true,
  imports: [HeaderComponent, RouterModule],
  templateUrl: './prefecture.component.html',
  styleUrl: './prefecture.component.css'
})
export class PrefectureComponent {

}
