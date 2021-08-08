
import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Product } from './../../models/product/product-model';
import { UserProduct } from './../../models/product/user-product-model';

//import { PRODUCTS } from '../../models/product/product-mock-backend';

@Injectable({
  providedIn: 'root'
})
export class ProductService {

  constructor(private http: HttpClient) { }
  url = "http://localhost:3000/categoria/"
  url2 = "http://localhost:3000/getProduct/"
  url3 = "http://localhost:3000/categoria-departamento"
  url4 = "http://localhost:3000/comentario/newComment"
  url5 = "http://localhost:3000/comentario/product"
  url6 = "http://localhost:3000/insertComplaints"

  getProducts(type:string){
    return this.http.get<Product[]>(`${this.url}${type}`)
  }

  getProduct(id:string){
    return this.http.get<UserProduct>(`${this.url2}${id}`)
  }

  getProductsByDepartmentAndCategory(url: string, category:string){
    return this.http.get<Product[]>(`${this.url3}?departamento=${url}&categoria=${category}`)
  }

  setNewCommentProduct(dataComment:any){
    return this.http.post<any>(this.url4, dataComment);
  }

  getCommentsProduct(productId:number){
    // console.log(productId);

    return this.http.post<any>(this.url5,{productId});
  }

  setNewReport(data:any){
    return this.http.post(this.url6,data);
  }
}
