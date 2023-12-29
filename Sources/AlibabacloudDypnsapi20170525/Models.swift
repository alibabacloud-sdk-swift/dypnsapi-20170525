import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CheckSmsVerifyCodeRequest : Tea.TeaModel {
    public var caseAuthPolicy: Int64?

    public var countryCode: String?

    public var outId: String?

    public var ownerId: Int64?

    public var phoneNumber: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var schemeName: String?

    public var verifyCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.caseAuthPolicy != nil {
            map["CaseAuthPolicy"] = self.caseAuthPolicy!
        }
        if self.countryCode != nil {
            map["CountryCode"] = self.countryCode!
        }
        if self.outId != nil {
            map["OutId"] = self.outId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.phoneNumber != nil {
            map["PhoneNumber"] = self.phoneNumber!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.schemeName != nil {
            map["SchemeName"] = self.schemeName!
        }
        if self.verifyCode != nil {
            map["VerifyCode"] = self.verifyCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CaseAuthPolicy") && dict["CaseAuthPolicy"] != nil {
            self.caseAuthPolicy = dict["CaseAuthPolicy"] as! Int64
        }
        if dict.keys.contains("CountryCode") && dict["CountryCode"] != nil {
            self.countryCode = dict["CountryCode"] as! String
        }
        if dict.keys.contains("OutId") && dict["OutId"] != nil {
            self.outId = dict["OutId"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PhoneNumber") && dict["PhoneNumber"] != nil {
            self.phoneNumber = dict["PhoneNumber"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SchemeName") && dict["SchemeName"] != nil {
            self.schemeName = dict["SchemeName"] as! String
        }
        if dict.keys.contains("VerifyCode") && dict["VerifyCode"] != nil {
            self.verifyCode = dict["VerifyCode"] as! String
        }
    }
}

public class CheckSmsVerifyCodeResponseBody : Tea.TeaModel {
    public class Model : Tea.TeaModel {
        public var outId: String?

        public var verifyResult: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.outId != nil {
                map["OutId"] = self.outId!
            }
            if self.verifyResult != nil {
                map["VerifyResult"] = self.verifyResult!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("OutId") && dict["OutId"] != nil {
                self.outId = dict["OutId"] as! String
            }
            if dict.keys.contains("VerifyResult") && dict["VerifyResult"] != nil {
                self.verifyResult = dict["VerifyResult"] as! String
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var message: String?

    public var model: CheckSmsVerifyCodeResponseBody.Model?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.model?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.model != nil {
            map["Model"] = self.model?.toMap()
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") && dict["AccessDeniedDetail"] != nil {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Model") && dict["Model"] != nil {
            var model = CheckSmsVerifyCodeResponseBody.Model()
            model.fromMap(dict["Model"] as! [String: Any])
            self.model = model
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CheckSmsVerifyCodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckSmsVerifyCodeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CheckSmsVerifyCodeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateSchemeConfigRequest : Tea.TeaModel {
    public var androidPackageName: String?

    public var androidPackageSign: String?

    public var appName: String?

    public var h5Origin: String?

    public var h5Url: String?

    public var iosBundleId: String?

    public var ownerId: Int64?

    public var platform: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var schemeName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.androidPackageName != nil {
            map["AndroidPackageName"] = self.androidPackageName!
        }
        if self.androidPackageSign != nil {
            map["AndroidPackageSign"] = self.androidPackageSign!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.h5Origin != nil {
            map["H5Origin"] = self.h5Origin!
        }
        if self.h5Url != nil {
            map["H5Url"] = self.h5Url!
        }
        if self.iosBundleId != nil {
            map["IosBundleId"] = self.iosBundleId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.platform != nil {
            map["Platform"] = self.platform!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.schemeName != nil {
            map["SchemeName"] = self.schemeName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AndroidPackageName") && dict["AndroidPackageName"] != nil {
            self.androidPackageName = dict["AndroidPackageName"] as! String
        }
        if dict.keys.contains("AndroidPackageSign") && dict["AndroidPackageSign"] != nil {
            self.androidPackageSign = dict["AndroidPackageSign"] as! String
        }
        if dict.keys.contains("AppName") && dict["AppName"] != nil {
            self.appName = dict["AppName"] as! String
        }
        if dict.keys.contains("H5Origin") && dict["H5Origin"] != nil {
            self.h5Origin = dict["H5Origin"] as! String
        }
        if dict.keys.contains("H5Url") && dict["H5Url"] != nil {
            self.h5Url = dict["H5Url"] as! String
        }
        if dict.keys.contains("IosBundleId") && dict["IosBundleId"] != nil {
            self.iosBundleId = dict["IosBundleId"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("Platform") && dict["Platform"] != nil {
            self.platform = dict["Platform"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SchemeName") && dict["SchemeName"] != nil {
            self.schemeName = dict["SchemeName"] as! String
        }
    }
}

public class CreateSchemeConfigResponseBody : Tea.TeaModel {
    public class Model : Tea.TeaModel {
        public var schemeCode: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.schemeCode != nil {
                map["SchemeCode"] = self.schemeCode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SchemeCode") && dict["SchemeCode"] != nil {
                self.schemeCode = dict["SchemeCode"] as! String
            }
        }
    }
    public var code: String?

    public var message: String?

    public var model: CreateSchemeConfigResponseBody.Model?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.model?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.model != nil {
            map["Model"] = self.model?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Model") && dict["Model"] != nil {
            var model = CreateSchemeConfigResponseBody.Model()
            model.fromMap(dict["Model"] as! [String: Any])
            self.model = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CreateSchemeConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSchemeConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateSchemeConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateVerifySchemeRequest : Tea.TeaModel {
    public var appName: String?

    public var authType: String?

    public var bundleId: String?

    public var cmApiCode: Int64?

    public var ctApiCode: Int64?

    public var cuApiCode: Int64?

    public var email: String?

    public var ipWhiteList: String?

    public var origin: String?

    public var osType: String?

    public var ownerId: Int64?

    public var packName: String?

    public var packSign: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var sceneType: String?

    public var schemeName: String?

    public var smsSignName: String?

    public var url: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.authType != nil {
            map["AuthType"] = self.authType!
        }
        if self.bundleId != nil {
            map["BundleId"] = self.bundleId!
        }
        if self.cmApiCode != nil {
            map["CmApiCode"] = self.cmApiCode!
        }
        if self.ctApiCode != nil {
            map["CtApiCode"] = self.ctApiCode!
        }
        if self.cuApiCode != nil {
            map["CuApiCode"] = self.cuApiCode!
        }
        if self.email != nil {
            map["Email"] = self.email!
        }
        if self.ipWhiteList != nil {
            map["IpWhiteList"] = self.ipWhiteList!
        }
        if self.origin != nil {
            map["Origin"] = self.origin!
        }
        if self.osType != nil {
            map["OsType"] = self.osType!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.packName != nil {
            map["PackName"] = self.packName!
        }
        if self.packSign != nil {
            map["PackSign"] = self.packSign!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.sceneType != nil {
            map["SceneType"] = self.sceneType!
        }
        if self.schemeName != nil {
            map["SchemeName"] = self.schemeName!
        }
        if self.smsSignName != nil {
            map["SmsSignName"] = self.smsSignName!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppName") && dict["AppName"] != nil {
            self.appName = dict["AppName"] as! String
        }
        if dict.keys.contains("AuthType") && dict["AuthType"] != nil {
            self.authType = dict["AuthType"] as! String
        }
        if dict.keys.contains("BundleId") && dict["BundleId"] != nil {
            self.bundleId = dict["BundleId"] as! String
        }
        if dict.keys.contains("CmApiCode") && dict["CmApiCode"] != nil {
            self.cmApiCode = dict["CmApiCode"] as! Int64
        }
        if dict.keys.contains("CtApiCode") && dict["CtApiCode"] != nil {
            self.ctApiCode = dict["CtApiCode"] as! Int64
        }
        if dict.keys.contains("CuApiCode") && dict["CuApiCode"] != nil {
            self.cuApiCode = dict["CuApiCode"] as! Int64
        }
        if dict.keys.contains("Email") && dict["Email"] != nil {
            self.email = dict["Email"] as! String
        }
        if dict.keys.contains("IpWhiteList") && dict["IpWhiteList"] != nil {
            self.ipWhiteList = dict["IpWhiteList"] as! String
        }
        if dict.keys.contains("Origin") && dict["Origin"] != nil {
            self.origin = dict["Origin"] as! String
        }
        if dict.keys.contains("OsType") && dict["OsType"] != nil {
            self.osType = dict["OsType"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PackName") && dict["PackName"] != nil {
            self.packName = dict["PackName"] as! String
        }
        if dict.keys.contains("PackSign") && dict["PackSign"] != nil {
            self.packSign = dict["PackSign"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SceneType") && dict["SceneType"] != nil {
            self.sceneType = dict["SceneType"] as! String
        }
        if dict.keys.contains("SchemeName") && dict["SchemeName"] != nil {
            self.schemeName = dict["SchemeName"] as! String
        }
        if dict.keys.contains("SmsSignName") && dict["SmsSignName"] != nil {
            self.smsSignName = dict["SmsSignName"] as! String
        }
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
    }
}

public class CreateVerifySchemeResponseBody : Tea.TeaModel {
    public class GateVerifySchemeDTO : Tea.TeaModel {
        public var schemeCode: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.schemeCode != nil {
                map["SchemeCode"] = self.schemeCode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SchemeCode") && dict["SchemeCode"] != nil {
                self.schemeCode = dict["SchemeCode"] as! String
            }
        }
    }
    public var code: String?

    public var gateVerifySchemeDTO: CreateVerifySchemeResponseBody.GateVerifySchemeDTO?

    public var httpStatusCode: Int64?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.gateVerifySchemeDTO?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.gateVerifySchemeDTO != nil {
            map["GateVerifySchemeDTO"] = self.gateVerifySchemeDTO?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("GateVerifySchemeDTO") && dict["GateVerifySchemeDTO"] != nil {
            var model = CreateVerifySchemeResponseBody.GateVerifySchemeDTO()
            model.fromMap(dict["GateVerifySchemeDTO"] as! [String: Any])
            self.gateVerifySchemeDTO = model
        }
        if dict.keys.contains("HttpStatusCode") && dict["HttpStatusCode"] != nil {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int64
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CreateVerifySchemeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateVerifySchemeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateVerifySchemeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteVerifySchemeRequest : Tea.TeaModel {
    public var customerId: Int64?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var schemeCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.customerId != nil {
            map["CustomerId"] = self.customerId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.schemeCode != nil {
            map["SchemeCode"] = self.schemeCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CustomerId") && dict["CustomerId"] != nil {
            self.customerId = dict["CustomerId"] as! Int64
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SchemeCode") && dict["SchemeCode"] != nil {
            self.schemeCode = dict["SchemeCode"] as! String
        }
    }
}

public class DeleteVerifySchemeResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var result: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            self.result = dict["Result"] as! Bool
        }
    }
}

public class DeleteVerifySchemeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteVerifySchemeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteVerifySchemeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeVerifySchemeRequest : Tea.TeaModel {
    public var customerId: Int64?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var schemeCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.customerId != nil {
            map["CustomerId"] = self.customerId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.schemeCode != nil {
            map["SchemeCode"] = self.schemeCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CustomerId") && dict["CustomerId"] != nil {
            self.customerId = dict["CustomerId"] as! Int64
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SchemeCode") && dict["SchemeCode"] != nil {
            self.schemeCode = dict["SchemeCode"] as! String
        }
    }
}

public class DescribeVerifySchemeResponseBody : Tea.TeaModel {
    public class SchemeQueryResultDTO : Tea.TeaModel {
        public var appEncryptInfo: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appEncryptInfo != nil {
                map["AppEncryptInfo"] = self.appEncryptInfo!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppEncryptInfo") && dict["AppEncryptInfo"] != nil {
                self.appEncryptInfo = dict["AppEncryptInfo"] as! String
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var schemeQueryResultDTO: DescribeVerifySchemeResponseBody.SchemeQueryResultDTO?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.schemeQueryResultDTO?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.schemeQueryResultDTO != nil {
            map["SchemeQueryResultDTO"] = self.schemeQueryResultDTO?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SchemeQueryResultDTO") && dict["SchemeQueryResultDTO"] != nil {
            var model = DescribeVerifySchemeResponseBody.SchemeQueryResultDTO()
            model.fromMap(dict["SchemeQueryResultDTO"] as! [String: Any])
            self.schemeQueryResultDTO = model
        }
    }
}

public class DescribeVerifySchemeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeVerifySchemeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeVerifySchemeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAuthTokenRequest : Tea.TeaModel {
    public var origin: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var sceneCode: String?

    public var url: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.origin != nil {
            map["Origin"] = self.origin!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.sceneCode != nil {
            map["SceneCode"] = self.sceneCode!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Origin") && dict["Origin"] != nil {
            self.origin = dict["Origin"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SceneCode") && dict["SceneCode"] != nil {
            self.sceneCode = dict["SceneCode"] as! String
        }
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
    }
}

public class GetAuthTokenResponseBody : Tea.TeaModel {
    public class TokenInfo : Tea.TeaModel {
        public var accessToken: String?

        public var jwtToken: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessToken != nil {
                map["AccessToken"] = self.accessToken!
            }
            if self.jwtToken != nil {
                map["JwtToken"] = self.jwtToken!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessToken") && dict["AccessToken"] != nil {
                self.accessToken = dict["AccessToken"] as! String
            }
            if dict.keys.contains("JwtToken") && dict["JwtToken"] != nil {
                self.jwtToken = dict["JwtToken"] as! String
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var tokenInfo: GetAuthTokenResponseBody.TokenInfo?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.tokenInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tokenInfo != nil {
            map["TokenInfo"] = self.tokenInfo?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TokenInfo") && dict["TokenInfo"] != nil {
            var model = GetAuthTokenResponseBody.TokenInfo()
            model.fromMap(dict["TokenInfo"] as! [String: Any])
            self.tokenInfo = model
        }
    }
}

public class GetAuthTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAuthTokenResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetAuthTokenResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAuthorizationUrlRequest : Tea.TeaModel {
    public var endDate: String?

    public var ownerId: Int64?

    public var phoneNo: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var schemeId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.phoneNo != nil {
            map["PhoneNo"] = self.phoneNo!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.schemeId != nil {
            map["SchemeId"] = self.schemeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndDate") && dict["EndDate"] != nil {
            self.endDate = dict["EndDate"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PhoneNo") && dict["PhoneNo"] != nil {
            self.phoneNo = dict["PhoneNo"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SchemeId") && dict["SchemeId"] != nil {
            self.schemeId = dict["SchemeId"] as! Int64
        }
    }
}

public class GetAuthorizationUrlResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var authorizationUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authorizationUrl != nil {
                map["AuthorizationUrl"] = self.authorizationUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthorizationUrl") && dict["AuthorizationUrl"] != nil {
                self.authorizationUrl = dict["AuthorizationUrl"] as! String
            }
        }
    }
    public var code: String?

    public var data: GetAuthorizationUrlResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetAuthorizationUrlResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetAuthorizationUrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAuthorizationUrlResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetAuthorizationUrlResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetFusionAuthTokenRequest : Tea.TeaModel {
    public var bundleId: String?

    public var durationSeconds: Int64?

    public var ownerId: Int64?

    public var packageName: String?

    public var packageSign: String?

    public var platform: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var schemeCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bundleId != nil {
            map["BundleId"] = self.bundleId!
        }
        if self.durationSeconds != nil {
            map["DurationSeconds"] = self.durationSeconds!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.packageName != nil {
            map["PackageName"] = self.packageName!
        }
        if self.packageSign != nil {
            map["PackageSign"] = self.packageSign!
        }
        if self.platform != nil {
            map["Platform"] = self.platform!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.schemeCode != nil {
            map["SchemeCode"] = self.schemeCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BundleId") && dict["BundleId"] != nil {
            self.bundleId = dict["BundleId"] as! String
        }
        if dict.keys.contains("DurationSeconds") && dict["DurationSeconds"] != nil {
            self.durationSeconds = dict["DurationSeconds"] as! Int64
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PackageName") && dict["PackageName"] != nil {
            self.packageName = dict["PackageName"] as! String
        }
        if dict.keys.contains("PackageSign") && dict["PackageSign"] != nil {
            self.packageSign = dict["PackageSign"] as! String
        }
        if dict.keys.contains("Platform") && dict["Platform"] != nil {
            self.platform = dict["Platform"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SchemeCode") && dict["SchemeCode"] != nil {
            self.schemeCode = dict["SchemeCode"] as! String
        }
    }
}

public class GetFusionAuthTokenResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var model: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.model != nil {
            map["Model"] = self.model!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Model") && dict["Model"] != nil {
            self.model = dict["Model"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetFusionAuthTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetFusionAuthTokenResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetFusionAuthTokenResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetMobileRequest : Tea.TeaModel {
    public var accessToken: String?

    public var outId: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessToken != nil {
            map["AccessToken"] = self.accessToken!
        }
        if self.outId != nil {
            map["OutId"] = self.outId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessToken") && dict["AccessToken"] != nil {
            self.accessToken = dict["AccessToken"] as! String
        }
        if dict.keys.contains("OutId") && dict["OutId"] != nil {
            self.outId = dict["OutId"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class GetMobileResponseBody : Tea.TeaModel {
    public class GetMobileResultDTO : Tea.TeaModel {
        public var mobile: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.mobile != nil {
                map["Mobile"] = self.mobile!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Mobile") && dict["Mobile"] != nil {
                self.mobile = dict["Mobile"] as! String
            }
        }
    }
    public var code: String?

    public var getMobileResultDTO: GetMobileResponseBody.GetMobileResultDTO?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.getMobileResultDTO?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.getMobileResultDTO != nil {
            map["GetMobileResultDTO"] = self.getMobileResultDTO?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("GetMobileResultDTO") && dict["GetMobileResultDTO"] != nil {
            var model = GetMobileResponseBody.GetMobileResultDTO()
            model.fromMap(dict["GetMobileResultDTO"] as! [String: Any])
            self.getMobileResultDTO = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetMobileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetMobileResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetMobileResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetPhoneWithTokenRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var spToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.spToken != nil {
            map["SpToken"] = self.spToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SpToken") && dict["SpToken"] != nil {
            self.spToken = dict["SpToken"] as! String
        }
    }
}

public class GetPhoneWithTokenResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var mobile: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.mobile != nil {
                map["Mobile"] = self.mobile!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Mobile") && dict["Mobile"] != nil {
                self.mobile = dict["Mobile"] as! String
            }
        }
    }
    public var code: String?

    public var data: GetPhoneWithTokenResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetPhoneWithTokenResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetPhoneWithTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPhoneWithTokenResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetPhoneWithTokenResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetSmsAuthTokensRequest : Tea.TeaModel {
    public var bundleId: String?

    public var expire: Int64?

    public var osType: String?

    public var ownerId: Int64?

    public var packageName: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var sceneCode: String?

    public var signName: String?

    public var smsCodeExpire: Int32?

    public var smsTemplateCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bundleId != nil {
            map["BundleId"] = self.bundleId!
        }
        if self.expire != nil {
            map["Expire"] = self.expire!
        }
        if self.osType != nil {
            map["OsType"] = self.osType!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.packageName != nil {
            map["PackageName"] = self.packageName!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.sceneCode != nil {
            map["SceneCode"] = self.sceneCode!
        }
        if self.signName != nil {
            map["SignName"] = self.signName!
        }
        if self.smsCodeExpire != nil {
            map["SmsCodeExpire"] = self.smsCodeExpire!
        }
        if self.smsTemplateCode != nil {
            map["SmsTemplateCode"] = self.smsTemplateCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BundleId") && dict["BundleId"] != nil {
            self.bundleId = dict["BundleId"] as! String
        }
        if dict.keys.contains("Expire") && dict["Expire"] != nil {
            self.expire = dict["Expire"] as! Int64
        }
        if dict.keys.contains("OsType") && dict["OsType"] != nil {
            self.osType = dict["OsType"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PackageName") && dict["PackageName"] != nil {
            self.packageName = dict["PackageName"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SceneCode") && dict["SceneCode"] != nil {
            self.sceneCode = dict["SceneCode"] as! String
        }
        if dict.keys.contains("SignName") && dict["SignName"] != nil {
            self.signName = dict["SignName"] as! String
        }
        if dict.keys.contains("SmsCodeExpire") && dict["SmsCodeExpire"] != nil {
            self.smsCodeExpire = dict["SmsCodeExpire"] as! Int32
        }
        if dict.keys.contains("SmsTemplateCode") && dict["SmsTemplateCode"] != nil {
            self.smsTemplateCode = dict["SmsTemplateCode"] as! String
        }
    }
}

public class GetSmsAuthTokensResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var bizToken: String?

        public var expireTime: Int64?

        public var stsAccessKeyId: String?

        public var stsAccessKeySecret: String?

        public var stsToken: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bizToken != nil {
                map["BizToken"] = self.bizToken!
            }
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.stsAccessKeyId != nil {
                map["StsAccessKeyId"] = self.stsAccessKeyId!
            }
            if self.stsAccessKeySecret != nil {
                map["StsAccessKeySecret"] = self.stsAccessKeySecret!
            }
            if self.stsToken != nil {
                map["StsToken"] = self.stsToken!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BizToken") && dict["BizToken"] != nil {
                self.bizToken = dict["BizToken"] as! String
            }
            if dict.keys.contains("ExpireTime") && dict["ExpireTime"] != nil {
                self.expireTime = dict["ExpireTime"] as! Int64
            }
            if dict.keys.contains("StsAccessKeyId") && dict["StsAccessKeyId"] != nil {
                self.stsAccessKeyId = dict["StsAccessKeyId"] as! String
            }
            if dict.keys.contains("StsAccessKeySecret") && dict["StsAccessKeySecret"] != nil {
                self.stsAccessKeySecret = dict["StsAccessKeySecret"] as! String
            }
            if dict.keys.contains("StsToken") && dict["StsToken"] != nil {
                self.stsToken = dict["StsToken"] as! String
            }
        }
    }
    public var code: String?

    public var data: GetSmsAuthTokensResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetSmsAuthTokensResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetSmsAuthTokensResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSmsAuthTokensResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetSmsAuthTokensResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class JyCreateVerifySchemeRequest : Tea.TeaModel {
    public var appName: String?

    public var bundleId: String?

    public var cmApiCode: Int64?

    public var ctApiCode: Int64?

    public var cuApiCode: Int64?

    public var osType: String?

    public var ownerId: Int64?

    public var packName: String?

    public var packSign: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var schemeName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.bundleId != nil {
            map["BundleId"] = self.bundleId!
        }
        if self.cmApiCode != nil {
            map["CmApiCode"] = self.cmApiCode!
        }
        if self.ctApiCode != nil {
            map["CtApiCode"] = self.ctApiCode!
        }
        if self.cuApiCode != nil {
            map["CuApiCode"] = self.cuApiCode!
        }
        if self.osType != nil {
            map["OsType"] = self.osType!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.packName != nil {
            map["PackName"] = self.packName!
        }
        if self.packSign != nil {
            map["PackSign"] = self.packSign!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.schemeName != nil {
            map["SchemeName"] = self.schemeName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppName") && dict["AppName"] != nil {
            self.appName = dict["AppName"] as! String
        }
        if dict.keys.contains("BundleId") && dict["BundleId"] != nil {
            self.bundleId = dict["BundleId"] as! String
        }
        if dict.keys.contains("CmApiCode") && dict["CmApiCode"] != nil {
            self.cmApiCode = dict["CmApiCode"] as! Int64
        }
        if dict.keys.contains("CtApiCode") && dict["CtApiCode"] != nil {
            self.ctApiCode = dict["CtApiCode"] as! Int64
        }
        if dict.keys.contains("CuApiCode") && dict["CuApiCode"] != nil {
            self.cuApiCode = dict["CuApiCode"] as! Int64
        }
        if dict.keys.contains("OsType") && dict["OsType"] != nil {
            self.osType = dict["OsType"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PackName") && dict["PackName"] != nil {
            self.packName = dict["PackName"] as! String
        }
        if dict.keys.contains("PackSign") && dict["PackSign"] != nil {
            self.packSign = dict["PackSign"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SchemeName") && dict["SchemeName"] != nil {
            self.schemeName = dict["SchemeName"] as! String
        }
    }
}

public class JyCreateVerifySchemeResponseBody : Tea.TeaModel {
    public class GateVerifySchemeData : Tea.TeaModel {
        public var schemeCode: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.schemeCode != nil {
                map["SchemeCode"] = self.schemeCode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SchemeCode") && dict["SchemeCode"] != nil {
                self.schemeCode = dict["SchemeCode"] as! String
            }
        }
    }
    public var code: String?

    public var gateVerifySchemeData: JyCreateVerifySchemeResponseBody.GateVerifySchemeData?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.gateVerifySchemeData?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.gateVerifySchemeData != nil {
            map["GateVerifySchemeData"] = self.gateVerifySchemeData?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("GateVerifySchemeData") && dict["GateVerifySchemeData"] != nil {
            var model = JyCreateVerifySchemeResponseBody.GateVerifySchemeData()
            model.fromMap(dict["GateVerifySchemeData"] as! [String: Any])
            self.gateVerifySchemeData = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class JyCreateVerifySchemeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: JyCreateVerifySchemeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = JyCreateVerifySchemeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class JyQueryAppInfoBySceneCodeRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var sceneCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.sceneCode != nil {
            map["SceneCode"] = self.sceneCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SceneCode") && dict["SceneCode"] != nil {
            self.sceneCode = dict["SceneCode"] as! String
        }
    }
}

public class JyQueryAppInfoBySceneCodeResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var cmAppId: String?

        public var cmAppKey: String?

        public var ctAppId: String?

        public var ctAppKey: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cmAppId != nil {
                map["CmAppId"] = self.cmAppId!
            }
            if self.cmAppKey != nil {
                map["CmAppKey"] = self.cmAppKey!
            }
            if self.ctAppId != nil {
                map["CtAppId"] = self.ctAppId!
            }
            if self.ctAppKey != nil {
                map["CtAppKey"] = self.ctAppKey!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CmAppId") && dict["CmAppId"] != nil {
                self.cmAppId = dict["CmAppId"] as! String
            }
            if dict.keys.contains("CmAppKey") && dict["CmAppKey"] != nil {
                self.cmAppKey = dict["CmAppKey"] as! String
            }
            if dict.keys.contains("CtAppId") && dict["CtAppId"] != nil {
                self.ctAppId = dict["CtAppId"] as! String
            }
            if dict.keys.contains("CtAppKey") && dict["CtAppKey"] != nil {
                self.ctAppKey = dict["CtAppKey"] as! String
            }
        }
    }
    public var code: String?

    public var data: JyQueryAppInfoBySceneCodeResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = JyQueryAppInfoBySceneCodeResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class JyQueryAppInfoBySceneCodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: JyQueryAppInfoBySceneCodeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = JyQueryAppInfoBySceneCodeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryGateVerifyBillingPublicRequest : Tea.TeaModel {
    public var authenticationType: Int32?

    public var month: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authenticationType != nil {
            map["AuthenticationType"] = self.authenticationType!
        }
        if self.month != nil {
            map["Month"] = self.month!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthenticationType") && dict["AuthenticationType"] != nil {
            self.authenticationType = dict["AuthenticationType"] as! Int32
        }
        if dict.keys.contains("Month") && dict["Month"] != nil {
            self.month = dict["Month"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
    }
}

public class QueryGateVerifyBillingPublicResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class SceneBillingList : Tea.TeaModel {
            public var add: String?

            public var amount: String?

            public var appName: String?

            public var itemName: String?

            public var sceneCode: String?

            public var sceneName: String?

            public var singlePrice: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.add != nil {
                    map["Add"] = self.add!
                }
                if self.amount != nil {
                    map["Amount"] = self.amount!
                }
                if self.appName != nil {
                    map["AppName"] = self.appName!
                }
                if self.itemName != nil {
                    map["ItemName"] = self.itemName!
                }
                if self.sceneCode != nil {
                    map["SceneCode"] = self.sceneCode!
                }
                if self.sceneName != nil {
                    map["SceneName"] = self.sceneName!
                }
                if self.singlePrice != nil {
                    map["SinglePrice"] = self.singlePrice!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Add") && dict["Add"] != nil {
                    self.add = dict["Add"] as! String
                }
                if dict.keys.contains("Amount") && dict["Amount"] != nil {
                    self.amount = dict["Amount"] as! String
                }
                if dict.keys.contains("AppName") && dict["AppName"] != nil {
                    self.appName = dict["AppName"] as! String
                }
                if dict.keys.contains("ItemName") && dict["ItemName"] != nil {
                    self.itemName = dict["ItemName"] as! String
                }
                if dict.keys.contains("SceneCode") && dict["SceneCode"] != nil {
                    self.sceneCode = dict["SceneCode"] as! String
                }
                if dict.keys.contains("SceneName") && dict["SceneName"] != nil {
                    self.sceneName = dict["SceneName"] as! String
                }
                if dict.keys.contains("SinglePrice") && dict["SinglePrice"] != nil {
                    self.singlePrice = dict["SinglePrice"] as! String
                }
            }
        }
        public var amountSum: String?

        public var sceneBillingList: [QueryGateVerifyBillingPublicResponseBody.Data.SceneBillingList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.amountSum != nil {
                map["AmountSum"] = self.amountSum!
            }
            if self.sceneBillingList != nil {
                var tmp : [Any] = []
                for k in self.sceneBillingList! {
                    tmp.append(k.toMap())
                }
                map["SceneBillingList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AmountSum") && dict["AmountSum"] != nil {
                self.amountSum = dict["AmountSum"] as! String
            }
            if dict.keys.contains("SceneBillingList") && dict["SceneBillingList"] != nil {
                var tmp : [QueryGateVerifyBillingPublicResponseBody.Data.SceneBillingList] = []
                for v in dict["SceneBillingList"] as! [Any] {
                    var model = QueryGateVerifyBillingPublicResponseBody.Data.SceneBillingList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.sceneBillingList = tmp
            }
        }
    }
    public var code: String?

    public var data: QueryGateVerifyBillingPublicResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = QueryGateVerifyBillingPublicResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class QueryGateVerifyBillingPublicResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryGateVerifyBillingPublicResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryGateVerifyBillingPublicResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryGateVerifyStatisticPublicRequest : Tea.TeaModel {
    public var authenticationType: Int32?

    public var endDate: String?

    public var osType: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var sceneCode: String?

    public var startDate: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authenticationType != nil {
            map["AuthenticationType"] = self.authenticationType!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.osType != nil {
            map["OsType"] = self.osType!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.sceneCode != nil {
            map["SceneCode"] = self.sceneCode!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthenticationType") && dict["AuthenticationType"] != nil {
            self.authenticationType = dict["AuthenticationType"] as! Int32
        }
        if dict.keys.contains("EndDate") && dict["EndDate"] != nil {
            self.endDate = dict["EndDate"] as! String
        }
        if dict.keys.contains("OsType") && dict["OsType"] != nil {
            self.osType = dict["OsType"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("SceneCode") && dict["SceneCode"] != nil {
            self.sceneCode = dict["SceneCode"] as! String
        }
        if dict.keys.contains("StartDate") && dict["StartDate"] != nil {
            self.startDate = dict["StartDate"] as! String
        }
    }
}

public class QueryGateVerifyStatisticPublicResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class DayStatistic : Tea.TeaModel {
            public var statisticDateStr: String?

            public var totalFail: Int64?

            public var totalSuccess: Int64?

            public var totalUnknown: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.statisticDateStr != nil {
                    map["StatisticDateStr"] = self.statisticDateStr!
                }
                if self.totalFail != nil {
                    map["TotalFail"] = self.totalFail!
                }
                if self.totalSuccess != nil {
                    map["TotalSuccess"] = self.totalSuccess!
                }
                if self.totalUnknown != nil {
                    map["TotalUnknown"] = self.totalUnknown!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("StatisticDateStr") && dict["StatisticDateStr"] != nil {
                    self.statisticDateStr = dict["StatisticDateStr"] as! String
                }
                if dict.keys.contains("TotalFail") && dict["TotalFail"] != nil {
                    self.totalFail = dict["TotalFail"] as! Int64
                }
                if dict.keys.contains("TotalSuccess") && dict["TotalSuccess"] != nil {
                    self.totalSuccess = dict["TotalSuccess"] as! Int64
                }
                if dict.keys.contains("TotalUnknown") && dict["TotalUnknown"] != nil {
                    self.totalUnknown = dict["TotalUnknown"] as! Int64
                }
            }
        }
        public var dayStatistic: [QueryGateVerifyStatisticPublicResponseBody.Data.DayStatistic]?

        public var total: Int64?

        public var totalFail: Int64?

        public var totalSuccess: Int64?

        public var totalUnknown: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dayStatistic != nil {
                var tmp : [Any] = []
                for k in self.dayStatistic! {
                    tmp.append(k.toMap())
                }
                map["DayStatistic"] = tmp
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            if self.totalFail != nil {
                map["TotalFail"] = self.totalFail!
            }
            if self.totalSuccess != nil {
                map["TotalSuccess"] = self.totalSuccess!
            }
            if self.totalUnknown != nil {
                map["TotalUnknown"] = self.totalUnknown!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DayStatistic") && dict["DayStatistic"] != nil {
                var tmp : [QueryGateVerifyStatisticPublicResponseBody.Data.DayStatistic] = []
                for v in dict["DayStatistic"] as! [Any] {
                    var model = QueryGateVerifyStatisticPublicResponseBody.Data.DayStatistic()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.dayStatistic = tmp
            }
            if dict.keys.contains("Total") && dict["Total"] != nil {
                self.total = dict["Total"] as! Int64
            }
            if dict.keys.contains("TotalFail") && dict["TotalFail"] != nil {
                self.totalFail = dict["TotalFail"] as! Int64
            }
            if dict.keys.contains("TotalSuccess") && dict["TotalSuccess"] != nil {
                self.totalSuccess = dict["TotalSuccess"] as! Int64
            }
            if dict.keys.contains("TotalUnknown") && dict["TotalUnknown"] != nil {
                self.totalUnknown = dict["TotalUnknown"] as! Int64
            }
        }
    }
    public var code: String?

    public var data: QueryGateVerifyStatisticPublicResponseBody.Data?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.data?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = QueryGateVerifyStatisticPublicResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class QueryGateVerifyStatisticPublicResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryGateVerifyStatisticPublicResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryGateVerifyStatisticPublicResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QuerySendDetailsRequest : Tea.TeaModel {
    public var bizId: String?

    public var currentPage: Int64?

    public var ownerId: Int64?

    public var pageSize: Int64?

    public var phoneNumber: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var sendDate: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizId != nil {
            map["BizId"] = self.bizId!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.phoneNumber != nil {
            map["PhoneNumber"] = self.phoneNumber!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.sendDate != nil {
            map["SendDate"] = self.sendDate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BizId") && dict["BizId"] != nil {
            self.bizId = dict["BizId"] as! String
        }
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int64
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("PhoneNumber") && dict["PhoneNumber"] != nil {
            self.phoneNumber = dict["PhoneNumber"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SendDate") && dict["SendDate"] != nil {
            self.sendDate = dict["SendDate"] as! String
        }
    }
}

public class QuerySendDetailsResponseBody : Tea.TeaModel {
    public class Model : Tea.TeaModel {
        public var content: String?

        public var errCode: String?

        public var outId: String?

        public var phoneNum: String?

        public var receiveDate: String?

        public var sendDate: String?

        public var sendStatus: Int64?

        public var templateCode: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.content != nil {
                map["Content"] = self.content!
            }
            if self.errCode != nil {
                map["ErrCode"] = self.errCode!
            }
            if self.outId != nil {
                map["OutId"] = self.outId!
            }
            if self.phoneNum != nil {
                map["PhoneNum"] = self.phoneNum!
            }
            if self.receiveDate != nil {
                map["ReceiveDate"] = self.receiveDate!
            }
            if self.sendDate != nil {
                map["SendDate"] = self.sendDate!
            }
            if self.sendStatus != nil {
                map["SendStatus"] = self.sendStatus!
            }
            if self.templateCode != nil {
                map["TemplateCode"] = self.templateCode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Content") && dict["Content"] != nil {
                self.content = dict["Content"] as! String
            }
            if dict.keys.contains("ErrCode") && dict["ErrCode"] != nil {
                self.errCode = dict["ErrCode"] as! String
            }
            if dict.keys.contains("OutId") && dict["OutId"] != nil {
                self.outId = dict["OutId"] as! String
            }
            if dict.keys.contains("PhoneNum") && dict["PhoneNum"] != nil {
                self.phoneNum = dict["PhoneNum"] as! String
            }
            if dict.keys.contains("ReceiveDate") && dict["ReceiveDate"] != nil {
                self.receiveDate = dict["ReceiveDate"] as! String
            }
            if dict.keys.contains("SendDate") && dict["SendDate"] != nil {
                self.sendDate = dict["SendDate"] as! String
            }
            if dict.keys.contains("SendStatus") && dict["SendStatus"] != nil {
                self.sendStatus = dict["SendStatus"] as! Int64
            }
            if dict.keys.contains("TemplateCode") && dict["TemplateCode"] != nil {
                self.templateCode = dict["TemplateCode"] as! String
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var message: String?

    public var model: [QuerySendDetailsResponseBody.Model]?

    public var success: Bool?

    public var totalCount: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.model != nil {
            var tmp : [Any] = []
            for k in self.model! {
                tmp.append(k.toMap())
            }
            map["Model"] = tmp
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") && dict["AccessDeniedDetail"] != nil {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Model") && dict["Model"] != nil {
            var tmp : [QuerySendDetailsResponseBody.Model] = []
            for v in dict["Model"] as! [Any] {
                var model = QuerySendDetailsResponseBody.Model()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.model = tmp
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class QuerySendDetailsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QuerySendDetailsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QuerySendDetailsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SendSmsVerifyCodeRequest : Tea.TeaModel {
    public var codeLength: Int64?

    public var codeType: Int64?

    public var countryCode: String?

    public var duplicatePolicy: Int64?

    public var interval: Int64?

    public var outId: String?

    public var ownerId: Int64?

    public var phoneNumber: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var returnVerifyCode: Bool?

    public var schemeName: String?

    public var signName: String?

    public var smsUpExtendCode: String?

    public var templateCode: String?

    public var templateParam: String?

    public var validTime: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.codeLength != nil {
            map["CodeLength"] = self.codeLength!
        }
        if self.codeType != nil {
            map["CodeType"] = self.codeType!
        }
        if self.countryCode != nil {
            map["CountryCode"] = self.countryCode!
        }
        if self.duplicatePolicy != nil {
            map["DuplicatePolicy"] = self.duplicatePolicy!
        }
        if self.interval != nil {
            map["Interval"] = self.interval!
        }
        if self.outId != nil {
            map["OutId"] = self.outId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.phoneNumber != nil {
            map["PhoneNumber"] = self.phoneNumber!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.returnVerifyCode != nil {
            map["ReturnVerifyCode"] = self.returnVerifyCode!
        }
        if self.schemeName != nil {
            map["SchemeName"] = self.schemeName!
        }
        if self.signName != nil {
            map["SignName"] = self.signName!
        }
        if self.smsUpExtendCode != nil {
            map["SmsUpExtendCode"] = self.smsUpExtendCode!
        }
        if self.templateCode != nil {
            map["TemplateCode"] = self.templateCode!
        }
        if self.templateParam != nil {
            map["TemplateParam"] = self.templateParam!
        }
        if self.validTime != nil {
            map["ValidTime"] = self.validTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CodeLength") && dict["CodeLength"] != nil {
            self.codeLength = dict["CodeLength"] as! Int64
        }
        if dict.keys.contains("CodeType") && dict["CodeType"] != nil {
            self.codeType = dict["CodeType"] as! Int64
        }
        if dict.keys.contains("CountryCode") && dict["CountryCode"] != nil {
            self.countryCode = dict["CountryCode"] as! String
        }
        if dict.keys.contains("DuplicatePolicy") && dict["DuplicatePolicy"] != nil {
            self.duplicatePolicy = dict["DuplicatePolicy"] as! Int64
        }
        if dict.keys.contains("Interval") && dict["Interval"] != nil {
            self.interval = dict["Interval"] as! Int64
        }
        if dict.keys.contains("OutId") && dict["OutId"] != nil {
            self.outId = dict["OutId"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PhoneNumber") && dict["PhoneNumber"] != nil {
            self.phoneNumber = dict["PhoneNumber"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("ReturnVerifyCode") && dict["ReturnVerifyCode"] != nil {
            self.returnVerifyCode = dict["ReturnVerifyCode"] as! Bool
        }
        if dict.keys.contains("SchemeName") && dict["SchemeName"] != nil {
            self.schemeName = dict["SchemeName"] as! String
        }
        if dict.keys.contains("SignName") && dict["SignName"] != nil {
            self.signName = dict["SignName"] as! String
        }
        if dict.keys.contains("SmsUpExtendCode") && dict["SmsUpExtendCode"] != nil {
            self.smsUpExtendCode = dict["SmsUpExtendCode"] as! String
        }
        if dict.keys.contains("TemplateCode") && dict["TemplateCode"] != nil {
            self.templateCode = dict["TemplateCode"] as! String
        }
        if dict.keys.contains("TemplateParam") && dict["TemplateParam"] != nil {
            self.templateParam = dict["TemplateParam"] as! String
        }
        if dict.keys.contains("ValidTime") && dict["ValidTime"] != nil {
            self.validTime = dict["ValidTime"] as! Int64
        }
    }
}

public class SendSmsVerifyCodeResponseBody : Tea.TeaModel {
    public class Model : Tea.TeaModel {
        public var bizId: String?

        public var outId: String?

        public var requestId: String?

        public var verifyCode: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bizId != nil {
                map["BizId"] = self.bizId!
            }
            if self.outId != nil {
                map["OutId"] = self.outId!
            }
            if self.requestId != nil {
                map["RequestId"] = self.requestId!
            }
            if self.verifyCode != nil {
                map["VerifyCode"] = self.verifyCode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BizId") && dict["BizId"] != nil {
                self.bizId = dict["BizId"] as! String
            }
            if dict.keys.contains("OutId") && dict["OutId"] != nil {
                self.outId = dict["OutId"] as! String
            }
            if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
                self.requestId = dict["RequestId"] as! String
            }
            if dict.keys.contains("VerifyCode") && dict["VerifyCode"] != nil {
                self.verifyCode = dict["VerifyCode"] as! String
            }
        }
    }
    public var accessDeniedDetail: String?

    public var code: String?

    public var message: String?

    public var model: SendSmsVerifyCodeResponseBody.Model?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.model?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessDeniedDetail != nil {
            map["AccessDeniedDetail"] = self.accessDeniedDetail!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.model != nil {
            map["Model"] = self.model?.toMap()
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessDeniedDetail") && dict["AccessDeniedDetail"] != nil {
            self.accessDeniedDetail = dict["AccessDeniedDetail"] as! String
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Model") && dict["Model"] != nil {
            var model = SendSmsVerifyCodeResponseBody.Model()
            model.fromMap(dict["Model"] as! [String: Any])
            self.model = model
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class SendSmsVerifyCodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SendSmsVerifyCodeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SendSmsVerifyCodeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class VerifyMobileRequest : Tea.TeaModel {
    public var accessCode: String?

    public var outId: String?

    public var ownerId: Int64?

    public var phoneNumber: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessCode != nil {
            map["AccessCode"] = self.accessCode!
        }
        if self.outId != nil {
            map["OutId"] = self.outId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.phoneNumber != nil {
            map["PhoneNumber"] = self.phoneNumber!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessCode") && dict["AccessCode"] != nil {
            self.accessCode = dict["AccessCode"] as! String
        }
        if dict.keys.contains("OutId") && dict["OutId"] != nil {
            self.outId = dict["OutId"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PhoneNumber") && dict["PhoneNumber"] != nil {
            self.phoneNumber = dict["PhoneNumber"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class VerifyMobileResponseBody : Tea.TeaModel {
    public class GateVerifyResultDTO : Tea.TeaModel {
        public var verifyId: String?

        public var verifyResult: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.verifyId != nil {
                map["VerifyId"] = self.verifyId!
            }
            if self.verifyResult != nil {
                map["VerifyResult"] = self.verifyResult!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("VerifyId") && dict["VerifyId"] != nil {
                self.verifyId = dict["VerifyId"] as! String
            }
            if dict.keys.contains("VerifyResult") && dict["VerifyResult"] != nil {
                self.verifyResult = dict["VerifyResult"] as! String
            }
        }
    }
    public var code: String?

    public var gateVerifyResultDTO: VerifyMobileResponseBody.GateVerifyResultDTO?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.gateVerifyResultDTO?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.gateVerifyResultDTO != nil {
            map["GateVerifyResultDTO"] = self.gateVerifyResultDTO?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("GateVerifyResultDTO") && dict["GateVerifyResultDTO"] != nil {
            var model = VerifyMobileResponseBody.GateVerifyResultDTO()
            model.fromMap(dict["GateVerifyResultDTO"] as! [String: Any])
            self.gateVerifyResultDTO = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class VerifyMobileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: VerifyMobileResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = VerifyMobileResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class VerifyPhoneWithTokenRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var phoneNumber: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var spToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.phoneNumber != nil {
            map["PhoneNumber"] = self.phoneNumber!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.spToken != nil {
            map["SpToken"] = self.spToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PhoneNumber") && dict["PhoneNumber"] != nil {
            self.phoneNumber = dict["PhoneNumber"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SpToken") && dict["SpToken"] != nil {
            self.spToken = dict["SpToken"] as! String
        }
    }
}

public class VerifyPhoneWithTokenResponseBody : Tea.TeaModel {
    public class GateVerify : Tea.TeaModel {
        public var verifyId: String?

        public var verifyResult: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.verifyId != nil {
                map["VerifyId"] = self.verifyId!
            }
            if self.verifyResult != nil {
                map["VerifyResult"] = self.verifyResult!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("VerifyId") && dict["VerifyId"] != nil {
                self.verifyId = dict["VerifyId"] as! String
            }
            if dict.keys.contains("VerifyResult") && dict["VerifyResult"] != nil {
                self.verifyResult = dict["VerifyResult"] as! String
            }
        }
    }
    public var code: String?

    public var gateVerify: VerifyPhoneWithTokenResponseBody.GateVerify?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.gateVerify?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.gateVerify != nil {
            map["GateVerify"] = self.gateVerify?.toMap()
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("GateVerify") && dict["GateVerify"] != nil {
            var model = VerifyPhoneWithTokenResponseBody.GateVerify()
            model.fromMap(dict["GateVerify"] as! [String: Any])
            self.gateVerify = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class VerifyPhoneWithTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: VerifyPhoneWithTokenResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = VerifyPhoneWithTokenResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class VerifySmsCodeRequest : Tea.TeaModel {
    public var phoneNumber: String?

    public var smsCode: String?

    public var smsToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.phoneNumber != nil {
            map["PhoneNumber"] = self.phoneNumber!
        }
        if self.smsCode != nil {
            map["SmsCode"] = self.smsCode!
        }
        if self.smsToken != nil {
            map["SmsToken"] = self.smsToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PhoneNumber") && dict["PhoneNumber"] != nil {
            self.phoneNumber = dict["PhoneNumber"] as! String
        }
        if dict.keys.contains("SmsCode") && dict["SmsCode"] != nil {
            self.smsCode = dict["SmsCode"] as! String
        }
        if dict.keys.contains("SmsToken") && dict["SmsToken"] != nil {
            self.smsToken = dict["SmsToken"] as! String
        }
    }
}

public class VerifySmsCodeResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

    public var message: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class VerifySmsCodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: VerifySmsCodeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = VerifySmsCodeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class VerifyWithFusionAuthTokenRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var verifyToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.verifyToken != nil {
            map["VerifyToken"] = self.verifyToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("VerifyToken") && dict["VerifyToken"] != nil {
            self.verifyToken = dict["VerifyToken"] as! String
        }
    }
}

public class VerifyWithFusionAuthTokenResponseBody : Tea.TeaModel {
    public class Model : Tea.TeaModel {
        public var phoneNumber: String?

        public var phoneScore: Int64?

        public var verifyResult: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.phoneNumber != nil {
                map["PhoneNumber"] = self.phoneNumber!
            }
            if self.phoneScore != nil {
                map["PhoneScore"] = self.phoneScore!
            }
            if self.verifyResult != nil {
                map["VerifyResult"] = self.verifyResult!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PhoneNumber") && dict["PhoneNumber"] != nil {
                self.phoneNumber = dict["PhoneNumber"] as! String
            }
            if dict.keys.contains("PhoneScore") && dict["PhoneScore"] != nil {
                self.phoneScore = dict["PhoneScore"] as! Int64
            }
            if dict.keys.contains("VerifyResult") && dict["VerifyResult"] != nil {
                self.verifyResult = dict["VerifyResult"] as! String
            }
        }
    }
    public var code: String?

    public var message: String?

    public var model: VerifyWithFusionAuthTokenResponseBody.Model?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.model?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.model != nil {
            map["Model"] = self.model?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Model") && dict["Model"] != nil {
            var model = VerifyWithFusionAuthTokenResponseBody.Model()
            model.fromMap(dict["Model"] as! [String: Any])
            self.model = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class VerifyWithFusionAuthTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: VerifyWithFusionAuthTokenResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = VerifyWithFusionAuthTokenResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
