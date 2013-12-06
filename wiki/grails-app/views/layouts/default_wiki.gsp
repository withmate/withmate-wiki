<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <r:require modules="bootstrap"/>
    <g:layoutTitle/>
    <r:layoutResources/>
</head>
<body>
    <div class="navbar navbar-default navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
               <button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#navbar-main">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <div class="navbar-collapse collapse" id="navbar-main">
                <ul class="nav navbar-nav navbar-right">
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#" id="setting"><span class="glyphicon glyphicon-cog"></span></a>
                        <ul class="dropdown-menu" aria-labelledby="setting">
                            <li>
                                <a tabindex="-1" href="#">사용자설정</a>
                            </li>
                            <li>
                                <a tabindex="-1" href="#">위키설정</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </div>
<g:layoutBody/>
<r:layoutResources/>
</body>
</html>