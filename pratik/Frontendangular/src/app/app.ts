import { Component, signal } from '@angular/core';
import { Springbootresponse } from './springbootresponse/springbootresponse';

@Component({
  selector: 'app-root',
  standalone: true,
  imports: [Springbootresponse],
  templateUrl: './app.html',
  styleUrl: './app.css'
})
export class App {
  protected readonly title = signal('angulardcoker');
}