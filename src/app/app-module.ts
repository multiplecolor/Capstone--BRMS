import { NgModule, provideBrowserGlobalErrorListeners } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing-module';
import { App } from './app';
import { Login } from './pages/login/login';
import { TemplatesList } from './pages/templates-list/templates-list';
import { CreateTemplate } from './pages/create-template/create-template';
import { EditTemplate } from './pages/edit-template/edit-template';
import { Header } from './shared/header/header';
import { Sidebar } from './shared/sidebar/sidebar';import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { MatInputModule } from '@angular/material/input';
import { MatFormFieldModule } from '@angular/material/form-field';
import { MatButtonModule } from '@angular/material/button';
import { MatCardModule } from '@angular/material/card';
import { MatToolbarModule } from '@angular/material/toolbar';
import { AppComponent } from './app.component';




@NgModule({
  declarations: [
    AppComponent,
   App,
    Login,
    TemplatesList,
    CreateTemplate,
    EditTemplate,
    Header,
    Sidebar
  ],
  imports: [
    BrowserModule,
    BrowserAnimationsModule,
    AppRoutingModule,
    MatInputModule,
    MatFormFieldModule,
    MatButtonModule,
    MatCardModule,
    MatToolbarModule
  ],
  providers: [
    provideBrowserGlobalErrorListeners(),
  ],
  bootstrap: [AppComponent]


  
  
})
export class AppModule { }
