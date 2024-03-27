import { Directive, inject } from '@angular/core';
import { AuthService } from './auth.service';
import { NgIf } from '@angular/common';

@Directive({
  selector: '[appAuth]',
  standalone: true,
  hostDirectives : [
    {directive : NgIf}
  ]
})
export class AuthDirective {

  private isAuth = inject(AuthService).isAuthentificated
  private ngIfDirective = inject(NgIf)

  constructor() { }

  ngOnInit(){
    this.ngIfDirective.ngIf = this.isAuth
  }

  setDir(state : boolean){
    this.ngIfDirective.ngIf = state
  }
}
