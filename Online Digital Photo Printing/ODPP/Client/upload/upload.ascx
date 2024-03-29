﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="upload.ascx.cs" Inherits="ODPP.Client.upload.upload" %>
<%--<link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.13/themes/base/jquery-ui.css"
    id="theme">--%>
<link rel="stylesheet" href="../upload/jquery.fileupload-ui.css">
<link rel="stylesheet" href="../upload/style.css">
<div id="fileupload">
    <input name="filePath" value="<%=Session["folder_path"] %>" type="hidden" />
    <div class="fileupload-buttonbar">
        <label class="fileinput-button">
            <span>Add files...</span>
            <input id="file" type="file" name="files[]" multiple>
        </label>
        <button type="submit" class="start">
            Start upload</button>
        <button type="reset" class="cancel">
            Cancel upload</button>
        <button type="button" class="delete button">
            Delete all files</button>
    </div>
    <div class="fileupload-content">
        <table class="files">
        </table>
        <div class="fileupload-progressbar">
        </div>
    </div>
</div>
<script id="template-upload" type="text/x-jquery-tmpl">
    <tr class="template-upload{{if error}} ui-state-error{{/if}}">
        <td class="preview"></td>
        <td class="name">${name}
            
        </td>
        <td class="size">${sizef}</td>
        <td class="imageNumber">
           <input name="number"  class="form-control" placeholder="Number of images" type="number" value="1" />
        </td>
      <td class="imageSize">
      <select name="imageSize" class="form-control">

      <asp:Repeater ID="rptPricing" runat="server">
                <HeaderTemplate>
    
                </HeaderTemplate>
                <ItemTemplate>
                    <option value="<%#Eval("SizeID")%>"><%#Eval("Size")%></option>
                </ItemTemplate>
                <FooterTemplate>
         
                </FooterTemplate>
            </asp:Repeater>

        
      </select>  
        </td>
        {{if error}}
            <td class="error" colspan="2">Error:
                {{if error === 'maxFileSize'}}File is too big
                {{else error === 'minFileSize'}}File is too small
                {{else error === 'acceptFileTypes'}}Filetype not allowed
                {{else error === 'maxNumberOfFiles'}}Max number of files exceeded
                {{else}}${error}
                {{/if}}
            </td>
        {{else}}
            <td class="progress"><div></div></td>
            <td class="start"><button>Start</button></td>
        {{/if}}
        <td class="cancel"><button>Cancel</button></td>
        <td><input type='image' src='http://images.aviary.com/images/edit-photo.png' value='Edit photo'
            onclick="return launchEditor('image1', 'http://images.aviary.com/images/edit-photo.png');" /></td>
    </tr>
</script>
<script id="template-download" type="text/x-jquery-tmpl">
    <tr class="template-download{{if error}} ui-state-error{{/if}}">
        {{if error}}
            <td></td>
            <td class="name">${namefdsa}</td>
            <td class="size">${sizef}</td>
            <td class="error" colspan="2">Error:
                {{if error === 1}}File exceeds upload_max_filesize (php.ini directive)
                {{else error === 2}}File exceeds MAX_FILE_SIZE (HTML form directive)
                {{else error === 3}}File was only partially uploaded
                {{else error === 4}}No File was uploaded
                {{else error === 5}}Missing a temporary folder
                {{else error === 6}}Failed to write file to disk
                {{else error === 7}}File upload stopped by extension
                {{else error === 'maxFileSize'}}File is too big
                {{else error === 'minFileSize'}}File is too small
                {{else error === 'acceptFileTypes'}}Filetype not allowed
                {{else error === 'maxNumberOfFiles'}}Max number of files exceeded
                {{else error === 'uploadedBytes'}}Uploaded bytes exceed file size
                {{else error === 'emptyResult'}}Empty file upload result
                {{else}}${error}
                {{/if}}
            </td>
        {{else}}
            <td class="preview">
                {{if Thumbnail_url}}
                    <a href="${url}" target="_blank"><img src="${Thumbnail_url}"></a>
                {{/if}}
            </td>
            <td class="name">
                <a href="${url}"{{if thumbnail_url}} target="_blank"{{/if}}>${Name}</a>
                
            </td>
            <td class="size">${Length}</td>
            <td colspan="2"></td>
        {{/if}}
        <td class="delete">
            <button data-type="DELETE" data-url="../upload/Handler.ashx?f=${Thumbnail_url}&n=${Name}">Delete</button>
        </td>
     <
    </tr>
</script>
<!--<script id="template-download" type="text/x-jquery-tmpl">
    <tr class="template-download{{if error}} ui-state-error{{/if}}">
        {{if error}}
            <td></td>
            <td class="name">${name}</td>
            <td class="size">${sizef}</td>
            <td class="error" colspan="2">Error:
                {{if error === 1}}File exceeds upload_max_filesize (php.ini directive)
                {{else error === 2}}File exceeds MAX_FILE_SIZE (HTML form directive)
                {{else error === 3}}File was only partially uploaded
                {{else error === 4}}No File was uploaded
                {{else error === 5}}Missing a temporary folder
                {{else error === 6}}Failed to write file to disk
                {{else error === 7}}File upload stopped by extension
                {{else error === 'maxFileSize'}}File is too big
                {{else error === 'minFileSize'}}File is too small
                {{else error === 'acceptFileTypes'}}Filetype not allowed
                {{else error === 'maxNumberOfFiles'}}Max number of files exceeded
                {{else error === 'uploadedBytes'}}Uploaded bytes exceed file size
                {{else error === 'emptyResult'}}Empty file upload result
                {{else}}${error}
                {{/if}}
            </td>
        {{else}}
            <td class="preview">
                {{if thumbnail_url}}
                    <a href="${url}" target="_blank"><img src="${thumbnail_url}"></a>
                {{/if}}
            </td>
            <td class="name">
                <a href="${url}"{{if thumbnail_url}} target="_blank"{{/if}}>${name}</a>
            </td>
            <td class="size">${sizef}</td>
            <td colspan="2"></td>
        {{/if}}
        <td class="delete">
            <button data-type="${delete_type}" data-url="${delete_url}">Delete</button>
        </td>
    </tr>
</script>-->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.13/jquery-ui.min.js"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jquery.templates/beta1/jquery.tmpl.min.js"></script>
<%--<script src="jquery.min.js" type="text/javascript"></script>
<script src="jquery-ui.min.js" type="text/javascript"></script>
<script src="jquery.tmpl.min.js" type="text/javascript"></script>--%>
<script src="../upload/jquery.iframe-transport.js"></script>
<script src="../upload/jquery.fileupload.js"></script>
<script src="../upload/jquery.fileupload-ui.js"></script>
<script src="../upload/application.js"></script>
