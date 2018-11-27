//
//  NetworkClient.swift
//  iOSStarterKit
//
//  Created by Justus Woolworth on 8/20/18.
//  Copyright © 2018 MonsterTech. All rights reserved.
//

import Foundation
import Moya

// 枚举所有接口目录
enum ExampleServices {
    case api1
    case api2(param:String)
    case api3(param:String ,anotherParam:String)
}

// 定义api资源的结构体
struct ExampleAPIProvider {
    
    static let provider = MoyaProvider<ExampleServices>()

    typealias successCallback = (_ result: Any) -> Void
    typealias failureCallback = (_ error: MoyaError) -> Void
    
    // 发送网络请求
    static func request(
        target: ExampleServices,
        success: @escaping successCallback,
        failure: @escaping failureCallback
        ) {
        
        provider.request(target) { result in
            switch result {
            case let .success(moyaResponse):
                do {
                    try success(moyaResponse.mapJSON()) // 测试用JSON数据
                } catch {
                    failure(MoyaError.jsonMapping(moyaResponse))
                }
            case let .failure(error):
                failure(error)
            }
        }
    }
    
}

// TargetType 定义每个接口的属性;这里的String最好使用一个结构体来储存，比如StringConstant
extension ExampleServices:TargetType {
    var baseURL: URL {
        return URL.init(string: "StringConstant.baseUrl")!
    }
    
    var path: String {
        switch self {
        case .api1:
            return "StringConstant.routerForApi1"
        case .api2(param: _):
            return "StringConstant.routerForApi2"
        case .api3(param: _, anotherParam: _):
            return "StringConstant.routerForApi3"
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .api1,.api3(param: _, anotherParam: _):
            return .get
        case .api2(param: _):
            return .post
        }
    }
    
    // 单元测试使用
    var sampleData: Data {
        switch self {
        case .api1,.api2(param: _),.api3(param: _, anotherParam: _):
            return "test".utf8Encoded
        }
    }
    // 这里的是任务请求的类型定义 根据实际的需求来变更
    var task: Task {
        switch self {
        case .api1:
            return .requestPlain
        case .api2(let param):
            return .requestParameters(parameters: ["param":param], encoding: URLEncoding.default)
        case .api3(let param, let anotherParam):
            return .requestParameters(parameters: ["param":param,"anotherParam":anotherParam], encoding: URLEncoding.default)
        }
    }
    
    var headers: [String : String]? {
        return ["Content-type" : "application/json"]
    }
}

// 扩展方法
private extension String {
    var utf8Encoded: Data {
        return data(using: .utf8)!
    }
}

// 实际的api请求方法列表 可以直接在VC里面调用 返回相应的数据模型

extension ExampleAPIProvider {
    
   static func dosomething(completeBlock: ((Any) -> Void)?) {
        ExampleAPIProvider.request(target: .api1, success: { (result) in
            // 验证返回的数据 然后模型序列化 回调返回
            completeBlock?(result)
        }) { (error) in
            // 错误处理
        }
    }
    
}


