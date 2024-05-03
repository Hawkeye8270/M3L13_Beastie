<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <head>
        <title>User: ${requestScope.user.login}</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    </head>
</head>
<body>

<form class="form-horizontal" method="post" action="/user-servlet?id=${user.id}">
    <fieldset>

        <!-- Form Name -->
        <legend>Form Name</legend>

        <!-- Login -->
        <div class="form-group">
            <label class="col-md-4 control-label" for="logininput">Login</label>
            <div class="col-md-4">
                <input id="logininput" name="logininput" type="text" placeholder="Enter your login gere" class="form-control input-md">

            </div>
        </div>

        <!-- Password -->
        <div class="form-group">
            <label class="col-md-4 control-label" for="passwordinput">Password</label>
            <div class="col-md-4">
                <input id="passwordinput" name="passwordinput" type="text" placeholder="Enter your password here" class="form-control input-md">

            </div>
        </div>

        <!-- Button -->
        <div class="form-group">
            <label class="col-md-4 control-label" for="savebutton">Save</label>
            <div class="col-md-4">
                <button id="savebutton" name="savebutton" class="btn btn-primary">Save</button>
            </div>
        </div>

    </fieldset>
</form>

${user.id} <br>
${user.login} <br>
${user.password} <br>

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

</body>
</html>
