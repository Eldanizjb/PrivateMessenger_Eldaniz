#pragma checksum "C:\Users\ACER\source\repos\SignalRMessenger\SignalRMessenger\Views\Messenger\Chat.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "95216f30820650e4157e6d96ec7ff38e8690a94b"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Messenger_Chat), @"mvc.1.0.view", @"/Views/Messenger/Chat.cshtml")]
namespace AspNetCore
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
#nullable restore
#line 1 "C:\Users\ACER\source\repos\SignalRMessenger\SignalRMessenger\Views\_ViewImports.cshtml"
using SignalRMessenger;

#line default
#line hidden
#nullable disable
#nullable restore
#line 2 "C:\Users\ACER\source\repos\SignalRMessenger\SignalRMessenger\Views\_ViewImports.cshtml"
using SignalRMessenger.Models;

#line default
#line hidden
#nullable disable
#nullable restore
#line 3 "C:\Users\ACER\source\repos\SignalRMessenger\SignalRMessenger\Views\_ViewImports.cshtml"
using SignalRMessenger.ViewModels;

#line default
#line hidden
#nullable disable
#nullable restore
#line 4 "C:\Users\ACER\source\repos\SignalRMessenger\SignalRMessenger\Views\_ViewImports.cshtml"
using Microsoft.AspNetCore.Http;

#line default
#line hidden
#nullable disable
#nullable restore
#line 5 "C:\Users\ACER\source\repos\SignalRMessenger\SignalRMessenger\Views\_ViewImports.cshtml"
using Microsoft.AspNetCore.Identity;

#line default
#line hidden
#nullable disable
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"95216f30820650e4157e6d96ec7ff38e8690a94b", @"/Views/Messenger/Chat.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"4d2a7b0a722c01219513010ac8a014d252db6a18", @"/Views/_ViewImports.cshtml")]
    public class Views_Messenger_Chat : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<VmMessage>
    {
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_0 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("class", new global::Microsoft.AspNetCore.Html.HtmlString("avatar"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_1 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("src", new global::Microsoft.AspNetCore.Html.HtmlString("~/images/images (4).jpg"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_2 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("alt", new global::Microsoft.AspNetCore.Html.HtmlString("image"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        #line hidden
        #pragma warning disable 0649
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperExecutionContext __tagHelperExecutionContext;
        #pragma warning restore 0649
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner __tagHelperRunner = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner();
        #pragma warning disable 0169
        private string __tagHelperStringValueBuffer;
        #pragma warning restore 0169
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __backed__tagHelperScopeManager = null;
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __tagHelperScopeManager
        {
            get
            {
                if (__backed__tagHelperScopeManager == null)
                {
                    __backed__tagHelperScopeManager = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager(StartTagHelperWritingScope, EndTagHelperWritingScope);
                }
                return __backed__tagHelperScopeManager;
            }
        }
        private global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.UrlResolutionTagHelper __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper;
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
#nullable restore
#line 2 "C:\Users\ACER\source\repos\SignalRMessenger\SignalRMessenger\Views\Messenger\Chat.cshtml"
  
    ViewData["Title"] = "Chat";

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n\r\n<div class=\"container\">\r\n    <div class=\"row\">\r\n        <div class=\"col-lg-12 text-center \" style=\" justify-content: center; display: flex; flex-wrap: nowrap; }\">\r\n            <h1 class=\"mb-5\">Send message to: ");
#nullable restore
#line 10 "C:\Users\ACER\source\repos\SignalRMessenger\SignalRMessenger\Views\Messenger\Chat.cshtml"
                                         Write(Model.User.Name);

#line default
#line hidden
#nullable disable
            WriteLiteral("</h1>\r\n            ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("img", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.SelfClosing, "95216f30820650e4157e6d96ec7ff38e8690a94b5525", async() => {
            }
            );
            __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.UrlResolutionTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_0);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_1);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_2);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral("\r\n        </div>\r\n        <hr />\r\n        <div class=\"col-lg-12 \"  style=\"display: flex; flex-wrap: nowrap; justify-content: space-around; \">\r\n            <div class=\"messageContainer mb-2\">\r\n");
#nullable restore
#line 16 "C:\Users\ACER\source\repos\SignalRMessenger\SignalRMessenger\Views\Messenger\Chat.cshtml"
                 foreach (var item in Model.Messages)
                {

#line default
#line hidden
#nullable disable
            WriteLiteral("                    <p");
            BeginWriteAttribute("class", " class=\"", 659, "\"", 719, 1);
#nullable restore
#line 18 "C:\Users\ACER\source\repos\SignalRMessenger\SignalRMessenger\Views\Messenger\Chat.cshtml"
WriteAttributeValue("", 667, item.SenderId==Model.SenderId?"sender":"reciever", 667, 52, false);

#line default
#line hidden
#nullable disable
            EndWriteAttribute();
            WriteLiteral(">");
#nullable restore
#line 18 "C:\Users\ACER\source\repos\SignalRMessenger\SignalRMessenger\Views\Messenger\Chat.cshtml"
                                                                               Write(item.Text);

#line default
#line hidden
#nullable disable
            WriteLiteral("</p>\r\n");
#nullable restore
#line 19 "C:\Users\ACER\source\repos\SignalRMessenger\SignalRMessenger\Views\Messenger\Chat.cshtml"
                }

#line default
#line hidden
#nullable disable
            WriteLiteral(@"         
            </div>
        </div>

        <div class=""col-lg-12 "" style=""display: flex; flex-wrap: nowrap; justify-content: space-around; display: flex;"">
            <div class=""input-group mb-3 "">
                <input type=""text"" class=""form-control"" id=""messengerInput"" placeholder=""Type message..."">
                <input hidden id=""recieverId""");
            BeginWriteAttribute("value", " value=\"", 1125, "\"", 1147, 1);
#nullable restore
#line 27 "C:\Users\ACER\source\repos\SignalRMessenger\SignalRMessenger\Views\Messenger\Chat.cshtml"
WriteAttributeValue("", 1133, Model.User.Id, 1133, 14, false);

#line default
#line hidden
#nullable disable
            EndWriteAttribute();
            WriteLiteral(">\r\n                <button class=\"btn btn-outline-secondary\" type=\"button\" id=\"messengerButton\" style=\"margin-top: 8px;\">Send</button>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</div>\r\n\r\n");
        }
        #pragma warning restore 1998
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<VmMessage> Html { get; private set; }
    }
}
#pragma warning restore 1591
