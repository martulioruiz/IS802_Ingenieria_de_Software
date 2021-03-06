import { Complaint } from './../../models/complaint-model';
import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class ComplaintService {

  url1 = "http://localhost:3000/complaint/getcomplaints"
  url2 = "http://localhost:3000/complaint/remove"
  url3 = "http://localhost:3000/complaint/accept"

  constructor(private http: HttpClient) { }

  getComplaints(){
    return this.http.get<Complaint[]>(this.url1)
  }

  removeComplaints(idComplaint: number){
    return this.http.post<Boolean>(this.url2, {Id_Complaint: idComplaint})
  }

  acceptComplaint(Id_Denounced: number){
    return this.http.post<Boolean>(this.url3, {Id_Denounced:Id_Denounced})
  }


}
