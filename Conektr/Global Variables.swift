            //
            //  Variables.swift
            //  Conektr
            //
            //  Created by Mr. Nabeel on 12/17/19.
            //  Copyright © 2019 Mr. Nabeel. All rights reserved.
            //
            import Foundation
            import UIKit
            import SwiftGoogleTranslate
            
            let bodyfor = bf()
            class bf {
                //////////// DASHBOARD LINKED
                let AllCategories = UI()
                let AllBrands = UI()
                let product = UI()
                let distributor = UI()
                let promotion = UI()
                let compare = UI()
                let quotecart = UI()
                let submitquote = UI()
                
                ////////// FOOTER
                let pop = UI()
                
                ////////// FOOTER LINKED
                let SearchResult = UI()
                let ShoppingCart = UI()
                let Checkout = UI()
                let Signin = UI()
                let CreateAccount = UI()
                let forgotPassword = UI()
                let myaccount = UI()
                let Editaccount = UI()
                let addressbook = UI()
                let Editaddress = UI()
                let orderlist = UI()
                let shoplist = UI()
                
                ////////// POP SCREEN
                let cartpop = UI()
                let checkoutpop = UI()
                let checkoutnewAddress = UI()
                let shoplistcopypop = UI()
                let shoplistmovepop = UI()
            }
            
            
            
            
            var quotelistobj:[ps] = []
            var comapareproductobj:[ps] = []
            var productdetail = ps()
            var productobj:[ps] = []
            class ps {
                var isSelected = false
                var distributorID = Int()
                var distributorName = String()
                var id = Int()
                var imag = UIImage()
                var imagUrl = String()
                var title = String()
                var typeId = String()
                var sku = String()
                var price = Double()
                var discount = Double()
                var quantity = Int()
                var description = String()
                var config = String()
                var variant = String()
                var pricing = String()
                
                // if type if not simple
                var startprice = Double()
                var endprice = Double()
                var variantlist:[vlist] = []
                var configlist:[clist] = []
                
            }
            
            class vlist {
                var id = Int()
                var name = String()
                var isSelected = false
            }
            
            class clist {
                var id = Int()
                var title = String()
                var price = Double()
                var isSelected = false
            }
            
            
            
            var promotionProductobj:[pps] = []
            class pps {
                var isSelected = false
                
                var id = Int()
                var distributor = String()
                var imag = UIImage()
                var title = String()
                var sku = String()
                var price = Double()
                var discount = Double()
                var quantity = Int()
                var description = String()
                var config = String()
                var variant = String()
                var pricing = String()
            }
            
            var AllCatArray:CategoriesDataModel?
            var allcategoryobj = acs()
            class acs{
                var id = Int()
                var image = UIImage()
                var title = String()
            }
            var allbrandobj:[abs] = []
            class abs{
                var id = Int()
                var image = UIImage()
                var imgurl = String()
                var title = String()
            }
            //var pricingoption:ProductOptions = []
            //var variantoption:ProductOptions = []
            //var productconfigoption:ProductOptions = []
            var searchProductobj:[ss] = []
            class ss{
                var isSelected = false
                
                var id = Int()
                var imag = UIImage()
                var imagUrl = String()
                var title = String()
                var sku = String()
                var typeId = String()
                var price = Double()
                var discount = Double()
                var quantity = Int()
                var description = String()
                var config = String()
                var variant = String()
                var pricing = String()
                
                
                var distributorID = Int()
                var distributorName = String()
                
                // if type if not simple
                var startprice = Double()
                var endprice = Double()
                var variantlist:[vlist] = []
                var configlist:[clist] = []
            }
            
            var billingAddObj:[Address] = []
            var SelectedBillingAddress:Address = Address()
            var IsBillingSame:Int = 1
            var cartobj:[cart] = []
            class cart {
                var isselected = false
                
                var distributorID = Int()
                var distributorName = String()
                var id = Int()
                var imag = UIImage()
                var imgUrl = String()
                var title = String()
                //    var sku = String()
                var price = Double()
                //    var discount = Double()
                var quantity = Int()
                //    var description = String()
                //    var config = String()
                var variant = String()
                //    var pricing = String()
                
                
                var itemID:Int? = Int()
                var sku:String? = String()
                var qty:Int? = Int()
                var name:String? = String()
                //    var price:Int? = Int()
                var productType:String? = String()
                var quoteID:String? = String()
                
            }
            
            var newcartobj:[newcart] = []
            class newcart {
                var isSelected = false
                var distributorid = Int()
                var distributorName = String()
                var product:[cartproduct] = []
            }
            class cartproduct {
                var id = Int()
                var imag = UIImage()
                var imgUrl = String()
                var title = String()
                //    var sku = String()
                var price = Double()
                //    var discount = Double()
                var quantity = Int()
                //    var description = String()
                //    var config = String()
                var variant = String()
                //    var pricing = String()
                
                
                var itemID:Int? = Int()
                var sku:String? = String()
                var qty:Int? = Int()
                var name:String? = String()
                //    var price:Int? = Int()
                var productType:String? = String()
                var quoteID:String? = String()
            }
            
            
            
            func oldCartModel_to_New() {
                
                newcartobj.removeAll()
                for cart in cartobj {
                    var enter = true
                    newcartobj.filter{$0.distributorName == cart.distributorName}.first.map {
                        enter = false
                        let obj = cartproduct()
                        obj.id = cart.id
                        obj.imag = cart.imag
                        obj.imgUrl = cart.imgUrl
                        obj.itemID = cart.itemID
                        obj.name = cart.name
                        obj.price = cart.price
                        obj.productType = cart.productType
                        obj.qty = cart.qty
                        obj.quantity = cart.quantity
                        obj.quoteID = cart.quoteID
                        obj.sku = cart.sku
                        obj.title = cart.title
                        obj.variant = cart.variant
                        $0.product.append(obj)
                    }
                    if enter {
                        newcartobj.append(newcart())
                        newcartobj[newcartobj.count-1].distributorid = cart.distributorID
                        newcartobj[newcartobj.count-1].distributorName = cart.distributorName
                        
                        let obj = cartproduct()
                        obj.id = cart.id
                        obj.imag = cart.imag
                        obj.imgUrl = cart.imgUrl
                        obj.itemID = cart.itemID
                        obj.name = cart.name
                        obj.price = cart.price
                        obj.productType = cart.productType
                        obj.qty = cart.qty
                        obj.quantity = cart.quantity
                        obj.quoteID = cart.quoteID
                        obj.sku = cart.sku
                        obj.title = cart.title
                        obj.variant = cart.variant
                        newcartobj[newcartobj.count-1].product.append(obj)
                    }
                    
                }
            }
            
            
            
            
            
            
            var shippingAddress:[sa] = []
            class sa {
                var isselected = false
                var id = Int()
                var l1 = ""
                var l2 = ""
                var l3 = ""
                var l4 = ""
                var l5 = ""
            }
            var customer:CustomerDetailModel = CustomerDetailModel()
            
            var distributorObj:[distdata] = []
            class distdata {
                var id = Int()
                var imag = UIImage()
                var title = String()
            }
            var custDetailModel:CustomerDetailModel?
            var PaymentsMethods:PaymentMethodModel? = PaymentMethodModel()
            var countriesandregionObj:CountryandRegionModel? = CountryandRegionModel()
            var orderListobj:[orderModel] = []
            class orderModel {
                var id = Int()
                var orderno = Int()
                var date = String()
                var shipto = String()
                var total = Double()
                var status = String()
            }
            
            
            
            var shoplist:[sl] = []
            class sl{
                var id = Int()
                var title = String()
                var isSelected = false
                var productlist:[slp] = []
            }
            
            class slp{
                var id = Int()
                var title = String()
                var price = Double()
                var qty = Int()
            }
            
            var quoteHistorylistobj:[qhl] = []
            class qhl {
                var quoteno = String()
                var date = String()
                var quoteTotal = Double()
                var status = String()
                var expirydate = String()
            }
            
            var quoteHistoryProductListobj:[qhpl] = []
            class qhpl{
                var productname = String()
                var variant = String()
                var config = String()
                var sku = String()
                var origionalprice = Double()
                var requestedprice = Double()
                var approvedprice = Double()
                var qty = Int()
                var discountAmount = Double()
                var subtotal = Double()
            }
            
            
            
            var orderdetailproductlistobj:[odpl] = []
            class odpl {
                var isSelected = false
                var distributorid = Int()
                var distributorName = String()
                var product:[odprod] = []
            }
            class odprod {
                var productname = String()
                var vendor = String()
                var sku = String()
                var price = Double()
                var subtotal = Double()
                var ordered = Int()
                var canceled = Int()
            }
            
            var reorderproductlistobj:[rop] = []
            class rop{
                var distributorid = String()
                var distributorname = String()
                var product:[ropl] = []
            }
            class ropl{
                var productid = Int()
                var isSelected = false
                var image = UIImage()
                var productname = String()
                var vendor = String()
                var price = Double()
                var qty = Int()
                var orderedqty = Int()
            }
            
            
            
            func TranslateText(label:UILabel){
                SwiftGoogleTranslate.shared.translate(label.text!, "es", "en") { (text, error) in
                    if let t = text {
                        DispatchQueue.main.async { // Make sure you're on the main thread here
                            label.text = text
                        }
                        
                    }
                }
            }
            
            func TranslateText(button:UIButton){
                SwiftGoogleTranslate.shared.translate(button.titleLabel!.text!, "es", "en") { (text, error) in
                    if let t = text {
                        DispatchQueue.main.async { // Make sure you're on the main thread here
                            button.setTitle(text, for: .normal)
                        }
                        
                    }
                }
            }
            
            
