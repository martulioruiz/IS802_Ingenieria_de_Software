import { CardProductDefaultComponent } from './components/card-product-default/card-product-default.component';
import { CoreModule } from './../core/core.module';
import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import {RouterModule} from "@angular/router";

import { HeaderDefaultComponent } from './components/header-default/header-default.component';
import { FooterDefaultComponent } from './components/footer-default/footer-default.component';

import { MaterialModule } from '../material/material.module';
import { HeaderUserComponent } from './components/header-user/header-user.component';
import { ContractDialogComponent } from './components/contract-dialog/contract-dialog.component';
import { LoginAlertDialogComponent } from './components/login-alert-dialog/login-alert-dialog.component';
import { ProductShelfComponent } from './components/product-shelf/product-shelf.component';
import { CardCategoryComponent } from './components/card-category/card-category.component';
import { CardProductComponent } from './components/card-product/card-product.component';
import { CarouselComponent } from './components/carousel/carousel.component';
import { ProductShelfDefaultComponent } from './components/product-shelf-default/product-shelf-default.component';
import { HeaderAdminComponent } from './components/header-admin/header-admin.component';
import { WishlistShelfComponent } from './components/wishlist-shelf/wishlist-shelf.component';


@NgModule({
  declarations: [
    HeaderDefaultComponent,
    FooterDefaultComponent,
    HeaderUserComponent,
    ContractDialogComponent,
    LoginAlertDialogComponent,
    ProductShelfComponent,
    CardCategoryComponent,
    CardProductDefaultComponent,
    CardProductComponent,
    CarouselComponent,
    ProductShelfDefaultComponent,
    HeaderAdminComponent,
    WishlistShelfComponent
  ],
  imports: [
    CommonModule,
    RouterModule,
    MaterialModule,
    CoreModule
  ],
  exports: [
    HeaderDefaultComponent,
    FooterDefaultComponent,
    HeaderUserComponent,
    ContractDialogComponent,
    LoginAlertDialogComponent,
    ProductShelfComponent,
    CarouselComponent,
    ProductShelfDefaultComponent,
    CardCategoryComponent,
    HeaderAdminComponent,
    WishlistShelfComponent
  ]
})
export class SharedModule { }
