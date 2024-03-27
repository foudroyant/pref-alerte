import { Injectable, inject } from '@angular/core';
import { Auth, User, createUserWithEmailAndPassword, signInWithEmailAndPassword, signOut } from '@angular/fire/auth';
import { Router } from '@angular/router';
import { collection, doc, getDocs, getFirestore, setDoc } from '@angular/fire/firestore';
import { ModelPrefecture } from './model';

@Injectable({
  providedIn: 'root'
})
export class AuthService {
  isAuthentificated : boolean = false
  user : User | undefined ;
  private auth: Auth = inject(Auth);
  private router = inject(Router)
  db = getFirestore();
  prefectures : ModelPrefecture [] = []

  constructor() { }

  
  async inscrire(email : string, password : string){
    return await createUserWithEmailAndPassword(
      this.auth,
      email,
      password
      ).then(async (res:any)=>{
        this.isAuthentificated = true
        this.user = res.user
        await setDoc(doc(this.db, "users", this.user?.uid!), {
          phone: "",
          motifs: [],
        });
        this.router.navigate(["/home"])
      })
      .catch((err:any)=>{
        console.log(err)
        alert("Une erreur s'est produite.")
        alert(err)
      })
  }

  async connecter(email : string, password : string){
    signInWithEmailAndPassword(this.auth, email, password)
    .then((res:any)=>{
      console.log(res)
      this.isAuthentificated = true
      this.user = res.user
      localStorage.setItem("user", JSON.stringify(this.user))
      this.router.navigate(["/home"])
    })
    .catch((err:any)=>{
      console.log(err)
      alert("Une erreur s'est produite")
    })
  }

  async logout(){
    signOut(this.auth).then(() => {
      this.isAuthentificated = false
      localStorage.removeItem("user")
      this.router.navigate(["/signIn"])
    }).catch((error) => {
      // An error happened.
    });
  }


  async getPrefectures(){
    this.prefectures = []
    const querySnapshot = await getDocs(collection(this.db, "prefectures"));
    querySnapshot.forEach((doc) => {
      console.log(doc.id, " => ", doc.data());
      this.prefectures.push({
        id : doc.id,
        indicatif : doc.data()["indicatif"],
        prefecture : doc.data()["prefecture"],
        sousPref : doc.data()["sousPref"],
        motifs : doc.data()["motifs"] 
      })
    });
    return this.prefectures
  }
}