import { Component, OnInit } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Component({
  selector: 'app-springbootresponse',
  standalone: true,
  imports: [],
  templateUrl: './springbootresponse.html',
  styleUrl: './springbootresponse.css',
})
export class Springbootresponse implements OnInit {

  message = '';

  constructor(private http: HttpClient) {}

  ngOnInit(): void {
  console.log("inside ngoninit");
  this.http.get('http://localhost:8085/api/message', { responseType: 'text' })
    .subscribe({
      next: (data) => {
        console.log("inside subscribe ",data);
        this.message = data;
        console.log(this.message)
      },
      error: (err) => {
        console.error(err);
      }
    });
}
}