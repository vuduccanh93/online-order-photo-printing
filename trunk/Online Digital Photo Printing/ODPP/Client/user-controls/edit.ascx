<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="edit.ascx.cs" Inherits="ODPP.Client.user_controls.edit" %>
   <!-- Load Feather code -->
    <script type="text/javascript" src="http://feather.aviary.com/js/feather.js"></script>
    <!-- Instantiate Feather -->
    <script type='text/javascript'>
        var featherEditor = new Aviary.Feather({
            apiKey: 'vb5lrof3rk4fiqui',
            apiVersion: 3,
            theme: 'dark', // Check out our new 'light' and 'dark' themes!
            tools: 'all',
            appendTo: '',
            onSave: function (imageID, newURL) {
                var img = document.getElementById(imageID);
                img.src = newURL;
            },
            postUrl: '../handler/Handler.aspx',
            onError: function (errorObj) {
                alert(errorObj.message);
            }
        });
        function launchEditor(id, src) {
            featherEditor.launch({
                image: id,
                url: src
            });
         
            return false;
        }
    </script>
    <div id='injection_site'>
    </div>
    <img id='image1' src='../images/photo.jpg' />
    <!-- Add an edit button, passing the HTML id of the image and the public URL of the image -->
  <%--  <p>
        <input type='image' src='http://images.aviary.com/images/edit-photo.png' value='Edit photo'
            onclick="return launchEditor('image1', 'http://images.aviary.com/images/edit-photo.png');" /></p>--%>