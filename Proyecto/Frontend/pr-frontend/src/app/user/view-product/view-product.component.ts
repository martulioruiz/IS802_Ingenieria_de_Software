import { AllProduct } from './../../core/models/product/user-product-model';
import { ProductService } from 'src/app/core/services/product/product.service';
import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-view-product',
  templateUrl: './view-product.component.html',
  styleUrls: ['./view-product.component.css']
})
export class ViewProductComponent implements OnInit {

  products!: AllProduct[]
  pageSlices!:any;

  constructor(

    private productService:ProductService
  ) { }

  ngOnInit(): void {
    this.getUserProducts()
  }

  getUserProducts(){
    this.productService.getUserProducts().subscribe(
      data=>{
        console.log(data)
        this.products = data
        this.pageSlices = this.products.slice(0,4)
      }
    )
  }

  onChangePage(event:any){
    const startIndex = event.pageIndex * event.pageSize;
    let endIndex = startIndex + event.pageSize;
    if(endIndex > this.products.length){
      endIndex = this.products.length;
    }
    this.pageSlices = this.products.slice(startIndex, endIndex)
  }

}


