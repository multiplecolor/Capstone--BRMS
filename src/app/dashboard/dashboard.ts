import { Component } from '@angular/core';

@Component({
  selector: 'app-dashboard',
  imports: [],
  templateUrl: './dashboard.html',
  styleUrl: './dashboard.css',
})
export class Dashboard {
   announcements = [
    {
      title: 'Major Product Launch',
      description: 'Enterprise AI platform launched successfully.'
    }
  ];

  recognitions = [
    {
      name: 'Rahul Sharma',
      department: 'Engineering',
      points: 4200
    }
  ];

}
