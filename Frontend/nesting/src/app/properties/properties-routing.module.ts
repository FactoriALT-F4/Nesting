import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { HomeComponent } from './views/home/home.component';
import { DetailsComponent } from './views/details/details.component';
import { BuyComponent } from './views/buy/buy.component';

import { PrevisualizationComponent } from './views/previsualization/previsualization.component';
import { SaleRentformComponent } from './views/sale-rentform/sale-rentform.component';
import { ReserveComponent } from './components/reserve/reserve.component';
import { ContactComponent } from './components/contact/contact.component';



const routes: Routes = [
  { path: '', redirectTo: 'home', pathMatch: 'full' },
  { path: 'home', component: HomeComponent },
  { path: 'details/:id', component: DetailsComponent },
  { path: 'reserve/:id', component: ReserveComponent },
  { path: 'contact/:id', component: ContactComponent },
  { path: 'buy', component: BuyComponent },

  { path: 'previsualization', component: PrevisualizationComponent },
  { path: 'sale_rentform', component: SaleRentformComponent },
  { path: 'home', component: HomeComponent},
  { path: 'details', component: DetailsComponent },
  { path: 'buy', component: BuyComponent},

  { path: 'sale_rentform', component: SaleRentformComponent}
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
})
export class PropertiesRoutingModule {}
