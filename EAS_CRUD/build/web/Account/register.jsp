<%-- 
    Document   : register
    Created on : Nov 20, 2020, 5:44:19 PM
    Author     : marsellaeve
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<style>
    body {
        font-family: Helvetica, sans-serif;
        background: #f8f8f8;
    }
    display-flex, .display-flex, .display-flex-center, .signup-content, .signup-content {
        display: flex;
        display: -webkit-flex;
    }
    .field-validation-error {
        color: #f00;
    }
    .validation-summary-errors {
        color: #f00;
        font-weight: bold;
    }
    .input-validation-error {
        border: 2px solid #f00 !important;
        background-color: #fee !important;
    }
    .signup-form {
        width: 60%;
        overflow: hidden;
    }
    .signup-form {
        margin-right: 50px;
        margin-left: 0px;
    }
    .signup-image {
        width: 40%;
        margin-left: 90px;
        margin-top: 70px;
        overflow: hidden;
    }
    .signup-image-link {
        font-size: 14px;
        color: #222;
        display: block;
        text-align: center;
    }
    .form-title {
        text-align: center;
    }
    .form-group {
        position: relative;
        margin-bottom: 10px;
        overflow: hidden;
    }
    .form-button {
        text-align: center;
    }
    #signup {
        margin-top: 16px;
    }
    .form-submit {
        display: inline-block;
        background: #6dabe4;
        color: #fff;
        border-bottom: none;
        width: auto;
        padding: 15px 39px;
        border-radius: 5px;
        -moz-border-radius: 5px;
        -webkit-border-radius: 5px;
        margin-top: 25px;
        cursor: pointer;
    }
        .form-submit:hover {
            background: #4292dc;
        }
    .agree-term {
        display: inline-block;
        width: auto;
    }
    .label-agree-term {
        position: relative;
        top: 0%;
        transform: translateY(0);
        -moz-transform: translateY(0);
        -webkit-transform: translateY(0);
        -o-transform: translateY(0);
        -ms-transform: translateY(0);
    }
    .signup-content {
        padding-top: 20px;
        padding-bottom: 0px;
        background: white;
        margin-top: 40px;
        border-radius: 30px;
        background: #fff;
        box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
    }
    .glyphicon {
        font-size: 18px;
    }
    row {
        margin-left: 50px;
    }
    .col-sm-5 {
        margin-left: 50px;
    }
    .other {
        margin-left: 20px;
    }
</style>

<meta http-equiv="PRAGMA" content="NO-CACHE">
<section class="sign-up">
    <div class="container">
        <div class="signup-content">
            <div class="signup-image">
                <img src="../signup-image.jpg" alt="sing up image">
                <a href="@Url.Action("Login", "Account")" class="signup-image-link" sizes="16x16">I am already member</a>
            </div>
            <div class="signup-form">
                <h2 class="form-title" style="text-align:center; font-family:Patua One; font-size:50px; margin-bottom:35px;">Sign Up</h2>
                @using (Html.BeginForm("Register", "Account", FormMethod.Post, new { @class = "form-horizontal", role = "form", id = "RegisterForm" }))
                {
                    @Html.AntiForgeryToken()
                    @Html.ValidationSummary("", new { @class = "text-danger" })
                    <div class="row">
                        <div class="col-sm-5">
                            <div class="form-group">
                                <span class="fa fa-smile" aria-hidden="true" style="font-size:24px;"></span>
                                @Html.LabelFor(x => x.Employee.Name, new { @class = "control-label", style = "font - size: 14px;" })
                                @Html.TextBoxFor(x => x.Employee.Name, new { @class = "col-xs-3 form-control", @placeholder = "Enter Name" })
                                @Html.ValidationMessageFor(x => x.Employee.Name, "", new { @class = "text-danger" })
                            </div>
                        </div>
                        <div class="col-sm-5 other">
                            <div class="form-group">
                                <span class="fas fa-user-md" aria-hidden="true" style="font-size:24px;"></span>
                                @Html.LabelFor(x => x.Employee.Position, new { @class = "control-label", style = "font - size: 14px;" })
                                @Html.TextBoxFor(x => x.Employee.Position, new { @class = "form-control", @placeholder = "Enter Position" })
                                @Html.ValidationMessageFor(x => x.Employee.Position, "", new { @class = "text-danger" })
                            </div>
                        </div>
                        <div class="col-sm-5">
                            <div class="form-group">
                                <span class="fa fa-mars-double" aria-hidden="true" style="font-size:24px;"></span>
                                @Html.LabelFor(x => x.Employee.Gender, new { @class = "control-label", style = "font - size: 14px;" })
                                @Html.TextBoxFor(x => x.Employee.Gender, new { @class = "form-control", @placeholder = "Enter Gender" })
                                @Html.ValidationMessageFor(x => x.Employee.Gender, "", new { @class = "text-danger" })
                            </div>
                        </div>
                        <div class="col-sm-5 other">
                            <div class="form-group">
                                <span class="fa fa-heartbeat" aria-hidden="true" style="font-size:24px;"></span>
                                @Html.LabelFor(x => x.Employee.Age, new { @class = "control-label", style = "font - size: 14px;" })
                                @Html.TextBoxFor(x => x.Employee.Age, new { @class = "form-control", @placeholder = "Enter Age" })
                                @Html.ValidationMessageFor(x => x.Employee.Age, "", new { @class = "text-danger" })
                            </div>
                        </div>
                        <div class="col-sm-5">
                            <div class="form-group">
                                <span class="fas fa-money-bill-alt" aria-hidden="true" style="font-size:24px;"></span>
                                @Html.LabelFor(x => x.Employee.Salary, new { @class = "control-label", style = "font - size: 14px;" })
                                @Html.TextBoxFor(x => x.Employee.Salary, new { @class = "form-control", @placeholder = "Enter Salary" })
                                @Html.ValidationMessageFor(x => x.Employee.Salary, "", new { @class = "text-danger" })
                            </div>
                        </div>
                        <div class="col-sm-5 other">
                            <div class="form-group">
                                <span class="fas fa-user-alt" aria-hidden="true" style="font-size:24px;"></span>
                                @Html.LabelFor(x => x.Employee.Username, new { @class = "control-label", style = "font - size: 14px;" })
                                @Html.TextBoxFor(x => x.Employee.Username, new { @class = "form-control", @placeholder = "Enter Username" })
                                @Html.ValidationMessageFor(x => x.Employee.Username, "", new { @class = "text-danger" })
                            </div>
                        </div>
                        <div class="col-sm-5">
                            <div class="form-group">
                                <span class="fas fa-lock" aria-hidden="true" style="font-size:24px;"></span>
                                @Html.LabelFor(x => x.Employee.USER_PASSWORD, new { @class = "control-label", style = "font - size: 14px;" })
                                @Html.PasswordFor(x => x.Employee.USER_PASSWORD, new { @class = "form-control", @placeholder = "Enter Password", @type = "password" })
                                @Html.ValidationMessageFor(x => x.Employee.USER_PASSWORD, "", new { @class = "text-danger" })
                            </div>
                        </div>
                        <div class="col-sm-5 other">
                            <div class="form-group">
                                <span class="fas fa-lightbulb" aria-hidden="true" style="font-size:24px;"></span>
                                @Html.LabelFor(x => x.Role.Id, "Role", new { @class = "control-label", style = "font-size: 14px;" })
                                @Html.TextBoxFor(x => x.Role.Id, new { @class = "form-control", @placeholder = "Enter Role" })
                                @Html.ValidationMessageFor(x => x.Role.Id, "", new { @class = "text-danger" })

                                <details>
                                    <summary>How to Choose a Role </summary>
                                    <text>Input 1 if you want to register as Admin</text>
                                    <text>Input 2 if you want to register as Employee</text>
                                </details>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-lg-12 text-center" style="margin-top:10px;">
                            <div class="form-group">
                                <input type="submit" class="btn btn-success btn-lg" value="Register" />
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm-5">
                            <div class="form-group">
                                <label class="label-danger">@ViewBag.DuplicateMessage</label>
                            </div>
                        </div>
                    </div>
                }
            </div>
        </div>
    </div>
</section>

<link href="https://fonts.googleapis.com/css2?family=Patua+One&display=swap" rel="stylesheet">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>

