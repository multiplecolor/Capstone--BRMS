import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { Login} from './pages/login/login';
import { TemplatesList } from './pages/templates-list/templates-list';
import { CreateTemplate } from './pages/create-template/create-template';
import { EditTemplate } from './pages/edit-template/edit-template';

const routes: Routes = [{ path: '', component: Login },
{ path: 'templates', component: TemplatesList },
{ path: 'create-template', component: CreateTemplate },
{ path: 'edit-template', component: EditTemplate
 }];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
