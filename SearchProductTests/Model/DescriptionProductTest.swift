//
//  DescriptionProductTest.swift
//  SearchProductTests
//
//  Created by Luis Aceredo on 2/3/19.
//  Copyright © 2019 Luis Aceredo. All rights reserved.
//

import XCTest

class DescriptionProductTest: XCTestCase {

    func testParseMovieIds() {
        let data =  """
{"id":"MLU444117259","site_id":"MLU","title":"Celular Apple Iphone 7 32gb Lte Original Refurbished Oferta","subtitle":null,"seller_id":44372023,"category_id":"MLU203094","official_store_id":null,"price":545,"base_price":545,"original_price":null,"currency_id":"USD","initial_quantity":3242,"available_quantity":500,"sold_quantity":200,"sale_terms":[{"id":"WARRANTY_TIME","name":"Tiempo de garantía","value_id":null,"value_name":"90 días","value_struct":{"number":90,"unit":"días"}},{"id":"WARRANTY_TYPE","name":"Tipo de garantía","value_id":"2230279","value_name":"Garantía de fábrica","value_struct":null}],"buying_mode":"buy_it_now","listing_type_id":"gold_special","start_time":"2017-03-07T20:01:11.000Z","stop_time":"2037-03-02T20:01:11.000Z","condition":"new","permalink":"https://articulo.mercadolibre.com.uy/MLU-444117259-celular-apple-iphone-7-32gb-lte-original-refurbished-oferta-_JM","thumbnail":"http://mlu-s2-p.mlstatic.com/907215-MLU28498610757_102018-I.jpg","secure_thumbnail":"https://mlu-s2-p.mlstatic.com/907215-MLU28498610757_102018-I.jpg","pictures":[{"id":"907215-MLU28498610757_102018","url":"http://mlu-s2-p.mlstatic.com/907215-MLU28498610757_102018-O.jpg","secure_url":"https://mlu-s2-p.mlstatic.com/907215-MLU28498610757_102018-O.jpg","size":"500x500","max_size":"1000x1000","quality":""},{"id":"655132-MLU28498610758_102018","url":"http://mlu-s2-p.mlstatic.com/655132-MLU28498610758_102018-O.jpg","secure_url":"https://mlu-s2-p.mlstatic.com/655132-MLU28498610758_102018-O.jpg","size":"500x500","max_size":"1000x1000","quality":""},{"id":"854953-MLU28498610756_102018","url":"http://mlu-s2-p.mlstatic.com/854953-MLU28498610756_102018-O.jpg","secure_url":"https://mlu-s2-p.mlstatic.com/854953-MLU28498610756_102018-O.jpg","size":"500x500","max_size":"1088x1088","quality":""},{"id":"960382-MLU28498610749_102018","url":"http://mlu-s2-p.mlstatic.com/960382-MLU28498610749_102018-O.jpg","secure_url":"https://mlu-s2-p.mlstatic.com/960382-MLU28498610749_102018-O.jpg","size":"500x500","max_size":"1000x1000","quality":""},{"id":"919746-MLU28908642357_122018","url":"http://mlu-s2-p.mlstatic.com/919746-MLU28908642357_122018-O.jpg","secure_url":"https://mlu-s2-p.mlstatic.com/919746-MLU28908642357_122018-O.jpg","size":"500x500","max_size":"1000x1000","quality":""},{"id":"870833-MLU28498610754_102018","url":"http://mlu-s2-p.mlstatic.com/870833-MLU28498610754_102018-O.jpg","secure_url":"https://mlu-s2-p.mlstatic.com/870833-MLU28498610754_102018-O.jpg","size":"500x500","max_size":"1000x1000","quality":""},{"id":"900880-MLU29308325922_022019","url":"http://mlu-s2-p.mlstatic.com/900880-MLU29308325922_022019-O.jpg","secure_url":"https://mlu-s2-p.mlstatic.com/900880-MLU29308325922_022019-O.jpg","size":"418x500","max_size":"562x672","quality":""},{"id":"867835-MLU28498610750_102018","url":"http://mlu-s2-p.mlstatic.com/867835-MLU28498610750_102018-O.jpg","secure_url":"https://mlu-s2-p.mlstatic.com/867835-MLU28498610750_102018-O.jpg","size":"500x500","max_size":"1000x1000","quality":""}],"video_id":null,"descriptions":[{"id":"MLU444117259-1289774942"}],"accepts_mercadopago":true,"non_mercado_pago_payment_methods":[],"shipping":{"mode":"me2","methods":[],"tags":[],"dimensions":null,"local_pick_up":true,"free_shipping":false,"logistic_type":"drop_off","store_pick_up":false},"international_delivery_mode":"none","seller_address":{"comment":"","address_line":"","zip_code":"","city":{"id":"TUxVQ0NFTjVjMTM","name":"Centro"},"state":{"id":"UY-MO","name":"Montevideo"},"country":{"id":"UY","name":"Uruguay"},"search_location":{"neighborhood":{"id":"","name":""},"city":{"id":"TUxVQ0NFTjVjMTM","name":"Centro"},"state":{"id":"TUxVUE1PTlo2MDIy","name":"Montevideo"}},"latitude":-34.910572,"longitude":-56.200386,"id":187371901},"seller_contact":null,"location":{},"geolocation":{"latitude":-34.910572,"longitude":-56.200386},"coverage_areas":[],"attributes":[{"id":"BRAND","name":"Marca","value_id":"9344","value_name":"Apple","value_struct":null,"attribute_group_id":"OTHERS","attribute_group_name":"Otros"},{"id":"ITEM_CONDITION","name":"Condición del ítem","value_id":"2230582","value_name":"Reacondicionado","value_struct":null,"attribute_group_id":"OTHERS","attribute_group_name":"Otros"},{"id":"MODEL","name":"Modelo","value_id":"312155","value_name":"iPhone 7","value_struct":null,"attribute_group_id":"OTHERS","attribute_group_name":"Otros"}],"warnings":[],"listing_source":"","variations":[],"status":"active","sub_status":[],"tags":["good_quality_picture","good_quality_thumbnail"],"warranty":"Garantía de fábrica: 90 días","catalog_product_id":null,"domain_id":null,"parent_item_id":null,"differential_pricing":null,"deal_ids":["MLU584"],"automatic_relist":false,"date_created":"2017-03-01T02:09:01.000Z","last_updated":"2019-02-02T12:35:20.000Z","health":0.71}
"""
        
        let result = ResultModel(jsonString: data)
        XCTAssertTrue(result != nil)

        if let items = result {
            XCTAssertNotNil(items.buyingMode)
            XCTAssertNotNil(items.title)
            XCTAssertNotNil(items.id)
            XCTAssertNotNil(items.currencyId)
        }
    }
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
