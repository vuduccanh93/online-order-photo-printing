﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.18051
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ODPP.Business.MyServices {
    
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="MyServices.EncryptDecryptSoap")]
    public interface EncryptDecryptSoap {
        
        // CODEGEN: Generating message contract since element name strEnCrypt from namespace http://tempuri.org/ is not marked nillable
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/EnCrypt", ReplyAction="*")]
        ODPP.Business.MyServices.EnCryptResponse EnCrypt(ODPP.Business.MyServices.EnCryptRequest request);
        
        // CODEGEN: Generating message contract since element name strDecypt from namespace http://tempuri.org/ is not marked nillable
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/DeCrypt", ReplyAction="*")]
        ODPP.Business.MyServices.DeCryptResponse DeCrypt(ODPP.Business.MyServices.DeCryptRequest request);
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.ServiceModel.MessageContractAttribute(IsWrapped=false)]
    public partial class EnCryptRequest {
        
        [System.ServiceModel.MessageBodyMemberAttribute(Name="EnCrypt", Namespace="http://tempuri.org/", Order=0)]
        public ODPP.Business.MyServices.EnCryptRequestBody Body;
        
        public EnCryptRequest() {
        }
        
        public EnCryptRequest(ODPP.Business.MyServices.EnCryptRequestBody Body) {
            this.Body = Body;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.Runtime.Serialization.DataContractAttribute(Namespace="http://tempuri.org/")]
    public partial class EnCryptRequestBody {
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=0)]
        public string strEnCrypt;
        
        public EnCryptRequestBody() {
        }
        
        public EnCryptRequestBody(string strEnCrypt) {
            this.strEnCrypt = strEnCrypt;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.ServiceModel.MessageContractAttribute(IsWrapped=false)]
    public partial class EnCryptResponse {
        
        [System.ServiceModel.MessageBodyMemberAttribute(Name="EnCryptResponse", Namespace="http://tempuri.org/", Order=0)]
        public ODPP.Business.MyServices.EnCryptResponseBody Body;
        
        public EnCryptResponse() {
        }
        
        public EnCryptResponse(ODPP.Business.MyServices.EnCryptResponseBody Body) {
            this.Body = Body;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.Runtime.Serialization.DataContractAttribute(Namespace="http://tempuri.org/")]
    public partial class EnCryptResponseBody {
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=0)]
        public string EnCryptResult;
        
        public EnCryptResponseBody() {
        }
        
        public EnCryptResponseBody(string EnCryptResult) {
            this.EnCryptResult = EnCryptResult;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.ServiceModel.MessageContractAttribute(IsWrapped=false)]
    public partial class DeCryptRequest {
        
        [System.ServiceModel.MessageBodyMemberAttribute(Name="DeCrypt", Namespace="http://tempuri.org/", Order=0)]
        public ODPP.Business.MyServices.DeCryptRequestBody Body;
        
        public DeCryptRequest() {
        }
        
        public DeCryptRequest(ODPP.Business.MyServices.DeCryptRequestBody Body) {
            this.Body = Body;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.Runtime.Serialization.DataContractAttribute(Namespace="http://tempuri.org/")]
    public partial class DeCryptRequestBody {
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=0)]
        public string strDecypt;
        
        public DeCryptRequestBody() {
        }
        
        public DeCryptRequestBody(string strDecypt) {
            this.strDecypt = strDecypt;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.ServiceModel.MessageContractAttribute(IsWrapped=false)]
    public partial class DeCryptResponse {
        
        [System.ServiceModel.MessageBodyMemberAttribute(Name="DeCryptResponse", Namespace="http://tempuri.org/", Order=0)]
        public ODPP.Business.MyServices.DeCryptResponseBody Body;
        
        public DeCryptResponse() {
        }
        
        public DeCryptResponse(ODPP.Business.MyServices.DeCryptResponseBody Body) {
            this.Body = Body;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.Runtime.Serialization.DataContractAttribute(Namespace="http://tempuri.org/")]
    public partial class DeCryptResponseBody {
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=0)]
        public string DeCryptResult;
        
        public DeCryptResponseBody() {
        }
        
        public DeCryptResponseBody(string DeCryptResult) {
            this.DeCryptResult = DeCryptResult;
        }
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface EncryptDecryptSoapChannel : ODPP.Business.MyServices.EncryptDecryptSoap, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class EncryptDecryptSoapClient : System.ServiceModel.ClientBase<ODPP.Business.MyServices.EncryptDecryptSoap>, ODPP.Business.MyServices.EncryptDecryptSoap {
        
        public EncryptDecryptSoapClient() {
        }
        
        public EncryptDecryptSoapClient(string endpointConfigurationName) : 
                base(endpointConfigurationName) {
        }
        
        public EncryptDecryptSoapClient(string endpointConfigurationName, string remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public EncryptDecryptSoapClient(string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public EncryptDecryptSoapClient(System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(binding, remoteAddress) {
        }
        
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
        ODPP.Business.MyServices.EnCryptResponse ODPP.Business.MyServices.EncryptDecryptSoap.EnCrypt(ODPP.Business.MyServices.EnCryptRequest request) {
            return base.Channel.EnCrypt(request);
        }
        
        public string EnCrypt(string strEnCrypt) {
            ODPP.Business.MyServices.EnCryptRequest inValue = new ODPP.Business.MyServices.EnCryptRequest();
            inValue.Body = new ODPP.Business.MyServices.EnCryptRequestBody();
            inValue.Body.strEnCrypt = strEnCrypt;
            ODPP.Business.MyServices.EnCryptResponse retVal = ((ODPP.Business.MyServices.EncryptDecryptSoap)(this)).EnCrypt(inValue);
            return retVal.Body.EnCryptResult;
        }
        
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
        ODPP.Business.MyServices.DeCryptResponse ODPP.Business.MyServices.EncryptDecryptSoap.DeCrypt(ODPP.Business.MyServices.DeCryptRequest request) {
            return base.Channel.DeCrypt(request);
        }
        
        public string DeCrypt(string strDecypt) {
            ODPP.Business.MyServices.DeCryptRequest inValue = new ODPP.Business.MyServices.DeCryptRequest();
            inValue.Body = new ODPP.Business.MyServices.DeCryptRequestBody();
            inValue.Body.strDecypt = strDecypt;
            ODPP.Business.MyServices.DeCryptResponse retVal = ((ODPP.Business.MyServices.EncryptDecryptSoap)(this)).DeCrypt(inValue);
            return retVal.Body.DeCryptResult;
        }
    }
}
