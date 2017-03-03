//
//  JRNetWorkURL.swift
//  SwiftDown
//
//  Created by 王潇 on 2017/3/2.
//  Copyright © 2017年 王潇. All rights reserved.
//

import UIKit

//import <CommonCrypto/CommonCrypto.h>

class JRNetWorkURL: NSObject { }

// MARK: - 公共上行参数
extension JRNetWorkURL {
	
	
	static func getPublicParam(param: [String : String]) -> [String:String] {
		
		
		
		return [:]
	}
	
	/// 获取公共伤上行基础参数
	///
	/// - Returns: 返回客户端基本信息
	static func publicUpwardConcatenation() -> [String : String] {
		
		var publicUpwardDict: [String:String] = [:];
		
		publicUpwardDict["channelType"]		= "AppStore"
		publicUpwardDict["channelId"]		= "0"
		publicUpwardDict["installId"]		= "5d9252cd8cf00290e07c0618ae143e5869280f5f"
		publicUpwardDict["modelName"]		= "iPhoneSimulator"
		publicUpwardDict["brand"]			= "Apple"
		publicUpwardDict["model"]			= "iPhoneSimulator"
		publicUpwardDict["os"]				= "ios"
		publicUpwardDict["osVersion"]		= "9.3"
		publicUpwardDict["clientVersion"]	= "4.0.0"
		publicUpwardDict["screenW"]			= "1242"
		publicUpwardDict["screenH"]			= "2208"
		publicUpwardDict["userId"]			= "10"
		publicUpwardDict["appId"]			= "ZHKXS"
		publicUpwardDict["api_key"]			= "27A28A4D4B24022E543E"
		
		return publicUpwardDict
	}
	
	/// 参数签名
	///
	/// - Parameter param: 请求参数
	/// - Returns: 参数签名
	static func getParamSign(param: [String : String]) -> String {
		
		var sign: String = String()
		let keys: Array = param.keys.sorted(by: {$0 > $1})
		for i in 0..<keys.count {
			let key = keys[i]
			if(i == 0){
				sign.append(String(format: "%@=%@", key, param[key]!))
			}else{
				sign.append(String(format: "&%@=%@", key, param[key]!))
			}
		}
		return sign
	}
}

// MARK: - 加密方法
// 注: 在 bridge 文件中引入 #import <CommonCrypto/CommonCrypto.h>
extension JRNetWorkURL {
	// Use of unresolved identifier 'CC_MD5'
	static func md5String(str:String) -> String{
		let cStr = str.cString(using: String.Encoding.utf8);
		let buffer = UnsafeMutablePointer<UInt8>.allocate(capacity: 16)
		CC_MD5(cStr!,(CC_LONG)(strlen(cStr!)), buffer)
		let md5String = NSMutableString();
		for i in 0 ..< 16{
			md5String.appendFormat("%02x", buffer[i])
		}
		free(buffer)
		return md5String as String
	}
}
